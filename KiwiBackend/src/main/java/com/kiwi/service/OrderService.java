package com.kiwi.service;

import java.util.List;

import com.kiwi.dto.request.CreateOrderRequest;
import com.kiwi.entities.Order;

import javax.servlet.http.HttpServletRequest;

public interface OrderService {
	String placeOrder(CreateOrderRequest request, HttpServletRequest r);

	List<Order> getList();

	List<Order> getOrderByUser(String username);
}
