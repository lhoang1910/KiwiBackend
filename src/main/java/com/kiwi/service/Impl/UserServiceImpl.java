package com.kiwi.service.Impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kiwi.dto.request.CreateUserRequest;
import com.kiwi.dto.request.UpdateProfileRequest;
import com.kiwi.entities.ERole;
import com.kiwi.entities.Role;
import com.kiwi.entities.User;
import com.kiwi.exception.NotFoundException;
import com.kiwi.repository.RoleRepository;
import com.kiwi.repository.UserRepository;
import com.kiwi.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	PasswordEncoder encoder;

	@Override
	public void register(CreateUserRequest request) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUsername(request.getUsername());
		user.setEmail(request.getEmail());
		user.setPassword(encoder.encode(request.getPassword()));

		Set<String> strRoles = request.getRole();
		Set<Role> roles = new HashSet<>();

		if (strRoles == null) {
			// kiem tra neu tai khoan chua co role thi tu dong add role user
			Role userRole = roleRepository.findByName(ERole.ROLE_USER)
					.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
			roles.add(userRole);
		} else {
			// duyet cac truong hop co role khac
			strRoles.forEach(role -> {
				switch (role) {
				case "admin":
					Role adminRole = roleRepository.findByName(ERole.ROLE_ADMIN)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(adminRole);

					break;
				case "mod":
					Role modRole = roleRepository.findByName(ERole.ROLE_MODERATOR)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(modRole);

					break;
				default:
					Role userRole = roleRepository.findByName(ERole.ROLE_USER)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(userRole);
				}
			});
		}
		user.setRoles(roles);
		userRepository.save(user);
	}

	@Override
	public User getUserByUsername(String username) {
		// TODO Auto-generated method stub
		User user = userRepository.findByUsername(username).orElseThrow(() -> new NotFoundException("Not Found User"));
		return user;
	}

	@Override
	public User updateUser(UpdateProfileRequest request) {
		// TODO Auto-generated method stub
		User user = userRepository.findByUsername(request.getUsername())
				.orElseThrow(() -> new NotFoundException("Not Found User"));
		user.setFirstname(request.getFirstname());
		user.setLastname(request.getLastname());
		user.setEmail(request.getEmail());
		user.setProvince(request.getProvince());
		user.setDistricts(request.getDistricts());
		user.setAddress(request.getAddress());
		user.setPhone(request.getPhone());
		userRepository.save(user);
		return user;
	}

}
