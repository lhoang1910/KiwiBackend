package com.kiwi.dto.request;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CreateCategoryRequest {
	@NotNull(message = "Tên danh mục rỗng")
	@NotEmpty(message = "Tên danh mục rỗng")
	@Size(min = 5, max = 50, message = "Độ dài danh mục từ 5-50 ký tự")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public CreateCategoryRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CreateCategoryRequest(
			@NotNull(message = "Tên danh mục rỗng") @NotEmpty(message = "Tên danh mục rỗng") @Size(min = 5, max = 50, message = "Độ dài danh mục từ 5-50 ký tự") String name) {
		super();
		this.name = name;
	}
}
