package com.kiwi.service;

import com.kiwi.dto.request.CreateUserRequest;
import com.kiwi.dto.request.UpdateProfileRequest;
import com.kiwi.entities.User;

public interface UserService {
	void register(CreateUserRequest request);

	User getUserByUsername(String username);

	User updateUser(UpdateProfileRequest request);

//	void changePassword(ChangePasswordRequest request);
}
