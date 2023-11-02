package com.kiwi.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.kiwi.exception.NotFoundException;
import com.kiwi.dto.request.CreateCategoryRequest;
import com.kiwi.entities.Category;
import com.kiwi.repository.CategoryRepository;
import com.kiwi.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> findAll() {
		// TODO Auto-generated method stub
		List<Category> list = categoryRepository.findAll(Sort.by("id").descending());
		return list;
	}

	@Override
	public List<Category> getListEnabled() {
		// TODO Auto-generated method stub
		List<Category> list = categoryRepository.findALLByEnabled();
		return list;
	}

	@Override
	public Category createCategory(CreateCategoryRequest request) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setName(request.getName());
		category.setEnable(false);
		categoryRepository.save(category);
		return category;
	}

	@Override
	public Category updateCategory(long id, CreateCategoryRequest request) {
		// TODO Auto-generated method stub
		Category category = categoryRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Category With Id: " + id));
		category.setName(request.getName());
		categoryRepository.save(category);
		return category;
	}

	@Override
	public void enableCategory(long id) {
		// TODO Auto-generated method stub
		Category category = categoryRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Category With Id: " + id));
		if (category.isEnable()) {
			category.setEnable(false);
		} else {
			category.setEnable(true);
		}
		categoryRepository.save(category);
	}

	@Override
	public void deleteCategory(long id) {
		// TODO Auto-generated method stub
		Category category = categoryRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Category With Id: " + id));
		categoryRepository.delete(category);
	}

}
