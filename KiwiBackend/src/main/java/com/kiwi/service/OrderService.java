package com.kiwi.service;

import java.util.List;

import com.kiwi.dto.request.CreateOrderRequest;
import com.kiwi.entities.Order;

public interface OrderService {
	void placeOrder(CreateOrderRequest request);

	List<Order> getList();

	List<Order> getOrderByUser(String username);
}
