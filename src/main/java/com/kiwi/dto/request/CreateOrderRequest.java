package com.kiwi.dto.request;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CreateOrderRequest {

	@NotNull(message = "Họ khách hàng rỗng")
	@NotEmpty(message = "Họ khách hàng rỗng")
	@Size(min = 3, max = 50, message = "Họ khách hàng từ 3-50 ký tự")
	private String firstname;

	@NotNull(message = "Tên khách hàng rỗng")
	@NotEmpty(message = "Tên khách hàng rỗng")
	@Size(min = 3, max = 50, message = "Tên khách hàng từ 3-50 ký tự")
	private String lastname;

	@NotNull(message = "Tên quốc gia rỗng")
	@NotEmpty(message = "Tên quốc gia rỗng")
	private String province;

	@NotNull(message = "Tên địa chỉ rỗng")
	@NotEmpty(message = "Tên địa chỉ rỗng")
	private String address;

	@NotNull(message = "Tên quốc gia rỗng")
	@NotEmpty(message = "Tên quốc gia rỗng")
	private String districts;

	@NotNull(message = "Email rỗng")
	@NotEmpty(message = "Email rỗng")
	@Email(message = "Email không đúng định dạng")
	private String email;

	@NotNull(message = "Số điện thoại rỗng")
	@NotEmpty(message = "Số điện thoại rỗng")
	private String phone;

	private String note;

	private long totalPrice;

	private String username;

	private List<CreateOrderDetailRequest> orderDetails;

	public CreateOrderRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CreateOrderRequest(
			@NotNull(message = "Họ khách hàng rỗng") @NotEmpty(message = "Họ khách hàng rỗng") @Size(min = 3, max = 50, message = "Họ khách hàng từ 3-50 ký tự") String firstname,
			@NotNull(message = "Tên khách hàng rỗng") @NotEmpty(message = "Tên khách hàng rỗng") @Size(min = 3, max = 50, message = "Tên khách hàng từ 3-50 ký tự") String lastname,
			@NotNull(message = "Tên quốc gia rỗng") @NotEmpty(message = "Tên quốc gia rỗng") String province,
			@NotNull(message = "Tên địa chỉ rỗng") @NotEmpty(message = "Tên địa chỉ rỗng") String address,
			@NotNull(message = "Tên quốc gia rỗng") @NotEmpty(message = "Tên quốc gia rỗng") String districts,
			@NotNull(message = "Email rỗng") @NotEmpty(message = "Email rỗng") @Email(message = "Email không đúng định dạng") String email,
			@NotNull(message = "Số điện thoại rỗng") @NotEmpty(message = "Số điện thoại rỗng") String phone,
			String note, long totalPrice, String username, List<CreateOrderDetailRequest> orderDetails) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.province = province;
		this.address = address;
		this.districts = districts;
		this.email = email;
		this.phone = phone;
		this.note = note;
		this.totalPrice = totalPrice;
		this.username = username;
		this.orderDetails = orderDetails;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<CreateOrderDetailRequest> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<CreateOrderDetailRequest> orderDetails) {
		this.orderDetails = orderDetails;
	}

}
