package com.kiwi.dto.request;

import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import io.swagger.v3.oas.annotations.media.Schema;

public class CreateUserRequest {

	@NotNull(message = "Username rỗng")
	@NotEmpty(message = "Username rỗng")
	@Size(min = 5, max = 30, message = "Username từ 5-30 ký tự")
	@Schema(description = "Username", example = "admin", required = true)
	private String username;

	@NotNull(message = "Email rỗng")
	@NotEmpty(message = "Email rỗng")
	@Size(min = 5, max = 30, message = "Email từ 5-30 ký tự")
	@Email(message = "Email không hợp lệ")
	@Schema(description = "Email", example = "admin@gmail.com", required = true)
	private String email;

	@NotNull(message = "Mật khẩu rỗng")
	@NotEmpty(message = "Mật khẩu rỗng")
	@Size(min = 6, max = 30, message = "Mật khẩu từ 6-30 ký tự")
	@Schema(description = "Mật khẩu", example = "123456")
	private String password;

	private Set<String> role;

	public CreateUserRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CreateUserRequest(
			@NotNull(message = "Username rỗng") @NotEmpty(message = "Username rỗng") @Size(min = 5, max = 30, message = "Username từ 5-30 ký tự") String username,
			@NotNull(message = "Email rỗng") @NotEmpty(message = "Email rỗng") @Size(min = 5, max = 30, message = "Email từ 5-30 ký tự") @Email(message = "Email không hợp lệ") String email,
			@NotNull(message = "Mật khẩu rỗng") @NotEmpty(message = "Mật khẩu rỗng") @Size(min = 6, max = 30, message = "Mật khẩu từ 6-30 ký tự") String password,
			Set<String> role) {
		this.username = username;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<String> getRole() {
		return role;
	}

	public void setRole(Set<String> role) {
		this.role = role;
	}

}
