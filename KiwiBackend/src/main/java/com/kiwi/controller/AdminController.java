package com.kiwi.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kiwi.dto.request.CreateCategoryRequest;
import com.kiwi.dto.request.CreateProductRequest;
import com.kiwi.dto.response.MessageResponse;
import com.kiwi.entities.Category;
import com.kiwi.entities.Order;
import com.kiwi.entities.Product;
import com.kiwi.service.*;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/admin")
@CrossOrigin(origins = "*", maxAge = 3600)
public class AdminController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ImageService imageService;

    @Autowired
    private OrderService orderService;

    @Autowired
    ProductService productService;

    @Autowired
    ProductRedisService productRedisService;

    @GetMapping("/categories")
    @Operation(summary = "Lấy danh sách danh mục")
    public ResponseEntity<?> getListCategory() {
        List<Category> categories = categoryService.findAll();
        return ResponseEntity.ok(categories);
    }

    @PostMapping("/category/create")
    @Operation(summary = "Tạo mới danh mục")
    public ResponseEntity<?> createCategory(@Valid @RequestBody CreateCategoryRequest request) {
        Category category = categoryService.createCategory(request);

        return ResponseEntity.ok(category);
    }

    @PutMapping("/category/update/{id}")
    @Operation(summary = "Tìm danh mục bằng id và cập nhật danh mục đó")
    public ResponseEntity<?> updateCategory(@PathVariable long id, @Valid @RequestBody CreateCategoryRequest request) {
        Category category = categoryService.updateCategory(id, request);
        return ResponseEntity.ok(category);
    }

    @PutMapping("/category/enable/{id}")
    @Operation(summary = "Kích hoạt danh mục bằng id")
    public ResponseEntity<?> enabled(@PathVariable long id) {
        categoryService.enableCategory(id);
        return ResponseEntity.ok(new MessageResponse("Cập nhật thành công"));
    }

    @DeleteMapping("/category/delete/{id}")
    @Operation(summary = "Xóa danh mục bằng id")
    public ResponseEntity<?> delete(@PathVariable long id) {
        categoryService.deleteCategory(id);
        return ResponseEntity.ok(new MessageResponse("Xóa thành công"));
    }

    @GetMapping("/orders")
    @Operation(summary = "Lấy ra danh sách đặt hàng")
    public ResponseEntity<List<Order>> getList() {
        List<Order> list = orderService.getList();

        return ResponseEntity.ok(list);
    }

    @PostMapping("/product/create")
    public ResponseEntity<Product> createProduct(@RequestBody CreateProductRequest request) throws JsonProcessingException {
        Product product = productService.createProduct(request);
        productRedisService.clear(); // Xóa cache toàn bộ
        return ResponseEntity.ok(product);
    }

    @PutMapping("/product/update/{id}")
    public ResponseEntity<Product> updateProduct(@PathVariable long id, @RequestBody CreateProductRequest request) throws JsonProcessingException {
        Product product = productService.updateProduct(id, request);
        productRedisService.clear(); // Xóa cache toàn bộ
        return ResponseEntity.ok(product);
    }

    @DeleteMapping("/product/delete/{id}")
    public ResponseEntity<?> deleteProduct(@PathVariable long id) throws JsonProcessingException {
        productService.deleteProduct(id);
        productRedisService.clear(); // Xóa cache toàn bộ
        return ResponseEntity.ok(new MessageResponse("Product is deleted"));
    }

}
