package com.kiwi.dto.request;

public class UpdateProfileRequest {

	private String username;

	private String firstname;

	private String lastname;

	private String email;

	private String province;

	private String districts;

	private String address;

	private String phone;

	public UpdateProfileRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdateProfileRequest(String username, String firstname, String lastname, String email, String province,
			String districts, String address, String phone) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.province = province;
		this.districts = districts;
		this.address = address;
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
