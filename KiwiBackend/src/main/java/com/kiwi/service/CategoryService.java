package com.kiwi.service;

import java.util.List;

import com.kiwi.dto.request.CreateCategoryRequest;
import com.kiwi.entities.Category;

public interface CategoryService {
	List<Category> findAll();

	List<Category> getListEnabled();

	Category createCategory(CreateCategoryRequest request);

	Category updateCategory(long id, CreateCategoryRequest request);

	void enableCategory(long id);

	void deleteCategory(long id);
}
