package com.kiwi.controller;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kiwi.service.ProductRedisService;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kiwi.dto.request.CreateProductRequest;
import com.kiwi.dto.response.MessageResponse;
import com.kiwi.entities.Product;
import com.kiwi.service.ProductService;

import io.swagger.v3.oas.annotations.Operation;

@RestController
@RequestMapping("/api/product")
@CrossOrigin(origins = "*", maxAge = 3600)
public class ProductController {
	@Autowired
	ProductService productService;

	@Autowired
	ProductRedisService productRedisService;

	//hien thi
	@GetMapping("/")
	@Operation(summary = "Lấy ra danh sách sản phẩm")
	public ResponseEntity<List<Product>> getList() throws JsonProcessingException {
		List<Product> list = productRedisService.getAllProducts(null, null);
		if (list == null) {
			list = productService.getList();
			productRedisService.saveAllProducts(list, null, null);
		}
		return ResponseEntity.ok(list);
	}

	@GetMapping("/{id}")
	@Operation(summary = "Lấy sản phẩm bằng id")
	public ResponseEntity<Product> getProduct(@PathVariable long id) {
		Product product = productService.getProduct(id);

		return ResponseEntity.ok(product);
	}

	@GetMapping("/search")
	public ResponseEntity<List<Product>> searchProduct(@RequestParam("keyword") String keyword) throws JsonProcessingException {
		List<Product> list = productRedisService.getAllProducts(keyword, null);
		if (list == null) {
			list = productService.searchProduct(keyword);
			productRedisService.saveAllProducts(list, keyword, null);
		}
		return ResponseEntity.ok(list);
	}

	@GetMapping("/newest/{number}")
	@Operation(summary = "Lấy ra danh sách sản phẩm mới nhất giới hạn số lượng = number")
	public ResponseEntity<List<Product>> getListNewst(@PathVariable int number) {
		List<Product> list = productService.getListNewst(number);
		return ResponseEntity.ok(list);
	}

	@GetMapping("/price")
	@Operation(summary = "Lấy ra danh sách 8 sản phẩm có giá từ thấp nhất đến cao")
	public ResponseEntity<List<Product>> getListByPrice() {
		List<Product> list = productService.getListByPrice();
		return ResponseEntity.ok(list);
	}

	@GetMapping("/related/{id}")
	@Operation(summary = "Lấy ra ngẫu nhiên 4 sản phẩm bằng category_id")
	public ResponseEntity<List<Product>> getListRelatedProduct(@PathVariable long id) {
		List<Product> list = productService.findRelatedProduct(id);
		return ResponseEntity.ok(list);
	}

	@GetMapping("/category/{id}")
	@Operation(summary = "Lấy ra danh sách sản phẩm bằng id của danh mục")
	public ResponseEntity<List<Product>> getListProductByCategory(@PathVariable long id) {
		List<Product> list = productService.getListProductByCategory(id);
		return ResponseEntity.ok(list);
	}

	@GetMapping("/range")
	@Operation(summary = "Lấy ra danh sách sản phẩm ở các mức giá từ min đến max")
	public ResponseEntity<List<Product>> getListProductByPriceRange(@RequestParam("id") long id,
			@RequestParam("min") int min, @RequestParam("max") int max) {
		List<Product> list = productService.getListByPriceRange(id, min, max);
		return ResponseEntity.ok(list);
	}
}
