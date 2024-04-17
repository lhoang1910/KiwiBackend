package com.kiwi.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kiwi.dto.request.CreateCategoryRequest;
import com.kiwi.dto.response.MessageResponse;
import com.kiwi.entities.Category;
import com.kiwi.service.CategoryService;

import io.swagger.v3.oas.annotations.Operation;

@RestController
@RequestMapping("/api/category")
@CrossOrigin(origins = "*", maxAge = 3600)
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@GetMapping("/enabled")
	@Operation(summary = "Lấy ra danh sách danh mục đã kích hoạt")
	public ResponseEntity<List<Category>> getListEnabled() {
		List<Category> categories = categoryService.getListEnabled();
		return ResponseEntity.ok(categories);
	}

}
