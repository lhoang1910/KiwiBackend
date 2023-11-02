package com.kiwi.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.kiwi.dto.request.CreateOrderDetailRequest;
import com.kiwi.dto.request.CreateOrderRequest;
import com.kiwi.entities.Order;
import com.kiwi.entities.OrderDetail;
import com.kiwi.entities.User;
import com.kiwi.exception.NotFoundException;
import com.kiwi.repository.OrderDetailRepository;
import com.kiwi.repository.OrderRepository;
import com.kiwi.repository.UserRepository;
import com.kiwi.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderRepository orderRepository;

	@Autowired
	OrderDetailRepository orderDetailRepository;

	@Autowired
	UserRepository userRepository;

	@Override
	public void placeOrder(CreateOrderRequest request) {
		// TODO Auto-generated method stub
		User user = userRepository.findByUsername(request.getUsername())
				.orElseThrow(() -> new NotFoundException("Not Found User With Username:" + request.getUsername()));
		Order order = new Order();
		order.setFirstname(request.getFirstname());
		order.setLastname(request.getLastname());
		order.setProvince(request.getProvince());
		order.setAddress(request.getAddress());
		order.setDistricts(request.getDistricts());
		order.setEmail(request.getEmail());
		order.setPhone(request.getPhone());
		order.setNote(request.getNote());
		orderRepository.save(order);
		long totalPrice = 0;
		for (CreateOrderDetailRequest rq : request.getOrderDetails()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setName(rq.getName());
			orderDetail.setPrice(rq.getPrice());
			orderDetail.setQuantity(rq.getQuantity());
			orderDetail.setSubTotal(rq.getPrice() * rq.getQuantity());
			orderDetail.setOrder(order);
			totalPrice += orderDetail.getSubTotal();
			orderDetailRepository.save(orderDetail);

		}
		order.setTotalPrice(totalPrice);
		order.setUser(user);
		orderRepository.save(order);
	}

	@Override
	public List<Order> getList() {
		// TODO Auto-generated method stub
		return orderRepository.findAll(Sort.by("id").descending());
	}

	@Override
	public List<Order> getOrderByUser(String username) {
		User user = userRepository.findByUsername(username)
				.orElseThrow(() -> new NotFoundException("Not Found User With Username:" + username));
		List<Order> orders = orderRepository.getOrderByUser(user.getId());
		return orders;

	}

}
