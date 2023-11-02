package com.kiwi.service;

import java.util.List;

import com.kiwi.dto.request.CreateProductRequest;
import com.kiwi.entities.Product;

public interface ProductService {
	List<Product> getList();

	List<Product> getListNewst(int number);

	List<Product> getListByPrice();

	List<Product> findRelatedProduct(long id);

	List<Product> getListProductByCategory(long id);

	List<Product> getListByPriceRange(long id, int min, int max);

	List<Product> searchProduct(String keyword);

	Product getProduct(long id);

	Product createProduct(CreateProductRequest request);

	Product updateProduct(long id, CreateProductRequest request);

	void deleteProduct(long id);
}
