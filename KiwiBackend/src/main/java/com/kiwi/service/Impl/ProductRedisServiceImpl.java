package com.kiwi.service.Impl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.kiwi.dto.response.ProductResponse;
import com.kiwi.entities.Product;
import com.kiwi.service.ProductRedisService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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

    @Autowired
    public ProductRedisServiceImpl(RedisTemplate<String, Object> redisTemplate, ObjectMapper objectMapper) {
        this.redisTemplate = redisTemplate;
        this.objectMapper = objectMapper;
    }

    @Override
    public void clear() {
        redisTemplate.delete(PRODUCT_CACHE_KEY);
    }

    @Override
    public List<Product> getAllProducts(String keyword, Long categoryId) throws JsonProcessingException {
        String hashKey = getHashKey(keyword, categoryId);
        List<Product> productResponses = null;
        if(redisTemplate.opsForHash().hasKey(PRODUCT_CACHE_KEY, hashKey)) {
            String jsonProducts = (String) redisTemplate.opsForHash().get(PRODUCT_CACHE_KEY, hashKey);
            productResponses = objectMapper.readValue(jsonProducts, new TypeReference<List<Product>>(){});
        }
        return productResponses;
    }

    @Override
    public void saveAllProducts(List<Product> productResponses, String keyword, Long categoryId) throws JsonProcessingException {
        String hashKey = getHashKey(keyword, categoryId);
        String jsonProducts = objectMapper.writeValueAsString(productResponses);
        redisTemplate.opsForHash().put(PRODUCT_CACHE_KEY, hashKey, jsonProducts);

        redisTemplate.expire(PRODUCT_CACHE_KEY, Duration.ofHours(1));
    }

    private String getHashKey(String keyword, Long categoryId) {
        return String.format("%s_%d", keyword, categoryId);
    }
}

