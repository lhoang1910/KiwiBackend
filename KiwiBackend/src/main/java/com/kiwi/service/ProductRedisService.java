package com.kiwi.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kiwi.entities.Product;

import java.util.List;

public interface ProductRedisService {
    void clear();
    List<Product> getAllProducts(String keyword, Long categoryId) throws JsonProcessingException;
    void saveAllProducts(List<Product> productResponses, String keyword, Long categoryId) throws JsonProcessingException;
}
