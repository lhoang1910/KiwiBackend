package com.kiwi.controller;

import java.util.List;

import com.kiwi.entities.OrderDetail;
import com.kiwi.repository.OrderRepository;
import com.kiwi.service.Impl.VNPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kiwi.dto.request.CreateOrderRequest;
import com.kiwi.dto.response.MessageResponse;
import com.kiwi.entities.Order;
import com.kiwi.service.OrderService;

import io.swagger.v3.oas.annotations.Operation;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/order")
@CrossOrigin(origins = "*", maxAge = 3600)
public class OrderController {
	@Autowired
	private OrderService orderService;

	@GetMapping("/user")
	@Operation(summary = "Lấy ra danh sách đặt hàng của người dùng bằng username")
	public ResponseEntity<List<Order>> getListByUser(@RequestParam("username") String username) {
		List<Order> list = orderService.getOrderByUser(username);

		return ResponseEntity.ok(list);
	}

	@PostMapping("/create")
	@Operation(summary = "Đặt hàng sản phẩm")
	public ResponseEntity<?> placeOrder(@RequestBody CreateOrderRequest request, HttpServletRequest r) {
		return ResponseEntity.ok(orderService.placeOrder(request, r));
	}
}
