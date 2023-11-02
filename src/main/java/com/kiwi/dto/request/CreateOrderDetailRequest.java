package com.kiwi.dto.request;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CreateOrderDetailRequest {
	@NotNull(message = "Tên sản phẩm rỗng")
	@NotEmpty(message = "Tên sản phẩm rỗng")
	@Size(min = 5, max = 50, message = "Tên sản phẩm từ 5-50 ký tự")
	private String name;

	@NotNull(message = "Giá sản phẩm rỗng")
	@NotEmpty(message = "Giá sản phẩm rỗng")
	@Size(min = 0, message = "Giá sản phẩm từ 0 trở lên")
	private long price;

	@NotNull(message = "Số lượng sản phẩm rỗng")
	@NotEmpty(message = "Số lượng sản phẩm rỗng")
	@Size(min = 1, message = "Số lượng sản phẩm từ 1 trở lên")
	private int quantity;

	private long subTotal;

	public CreateOrderDetailRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CreateOrderDetailRequest(
			@NotNull(message = "Tên sản phẩm rỗng") @NotEmpty(message = "Tên sản phẩm rỗng") @Size(min = 5, max = 50, message = "Tên sản phẩm từ 5-50 ký tự") String name,
			@NotNull(message = "Giá sản phẩm rỗng") @NotEmpty(message = "Giá sản phẩm rỗng") @Size(min = 0, message = "Giá sản phẩm từ 0 trở lên") long price,
			@NotNull(message = "Số lượng sản phẩm rỗng") @NotEmpty(message = "Số lượng sản phẩm rỗng") @Size(min = 1, message = "Số lượng sản phẩm từ 1 trở lên") int quantity,
			long subTotal) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.subTotal = subTotal;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(long subTotal) {
		this.subTotal = subTotal;
	}
}
