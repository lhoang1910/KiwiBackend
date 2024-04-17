package com.kiwi.service.Impl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.kiwi.dto.response.ProductResponse;
import com.kiwi.entities.Product;
import com.kiwi.service.ProductRedisService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.util.List;

@Service
public class ProductRedisServiceImpl implements ProductRedisService {

    private static final String PRODUCT_CACHE_KEY = "ProductCache";
    private final RedisTemplate<String, Object> redisTemplate;
    private final ObjectMapper objectMapper;
    private static final Logger logger = LoggerFactory.getLogger(ProductRedisService.class);


    @Autowired
    public ProductRedisServiceImpl(RedisTemplate<String, Object> redisTemplate, ObjectMapper objectMapper) {
        this.redisTemplate = redisTemplate;
        this.objectMapper = objectMapper;
    }

    @Override
    public void clear() {
       boolean isDeleted= redisTemplate.delete(PRODUCT_CACHE_KEY);
        logger.info("Đã xóa cache cho tất cả sản phẩm: {}", isDeleted ? "thành công" : "thất bại");
    }

    @Override
    public List<Product> getAllProducts(String keyword, Long categoryId) throws JsonProcessingException {
        String hashKey = getHashKey(keyword, categoryId);
        if(redisTemplate.opsForHash().hasKey(PRODUCT_CACHE_KEY, hashKey)) {
            logger.info("Cache truy xuất thành công cho từ khóa '{}' và danh mục ID '{}'", keyword, categoryId);
            String jsonProducts = (String) redisTemplate.opsForHash().get(PRODUCT_CACHE_KEY, hashKey);
            return objectMapper.readValue(jsonProducts, new TypeReference<List<Product>>(){});
        } else {
            logger.info("Cache không tìm thấy cho từ khóa '{}' và danh mục ID '{}'", keyword, categoryId);
        }
        return null;
    }

    @Override
    public void saveAllProducts(List<Product> products, String keyword, Long categoryId) throws JsonProcessingException {
        String hashKey = getHashKey(keyword, categoryId);
        String jsonProducts = objectMapper.writeValueAsString(products);
        redisTemplate.opsForHash().put(PRODUCT_CACHE_KEY, hashKey, jsonProducts);
        redisTemplate.expire(PRODUCT_CACHE_KEY, Duration.ofHours(1));
        logger.info("Đã lưu vào cache danh sách sản phẩm với từ khóa '{}' và danh mục ID '{}'", keyword, categoryId);
    }

    private String getHashKey(String keyword, Long categoryId) {
        return String.format("%s_%d", keyword, categoryId);
    }
}

