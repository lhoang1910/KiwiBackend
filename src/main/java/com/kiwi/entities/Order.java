package com.kiwi.entities;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String firstname;

	private String lastname;

	private String province;

	private String address;

	private String districts;

	private String email;

	private String phone;

	private String note;

	private long totalPrice;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@OneToMany(mappedBy = "order")
	@JsonBackReference
	private Set<OrderDetail> orderdetails;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(long id, String firstname, String lastname, String province, String address, String districts,
			String email, String phone, String note, long totalPrice, User user, Set<OrderDetail> orderdetails) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.province = province;
		this.address = address;
		this.districts = districts;
		this.email = email;
		this.phone = phone;
		this.note = note;
		this.totalPrice = totalPrice;
		this.user = user;
		this.orderdetails = orderdetails;

	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistricts() {
		return districts;
	}

	public void setDistricts(String districts) {
		this.districts = districts;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<OrderDetail> getOrderdetails() {
		return orderdetails;
	}

	public void setOrderdetails(Set<OrderDetail> orderdetails) {
		this.orderdetails = orderdetails;
	}

}