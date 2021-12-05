package com.babysittingapp.babysittingapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.babysittingapp.babysittingapp.model.User;
import com.babysittingapp.babysittingapp.repositories.UserRepository;







@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	
	public User registerUser(User user) {

		user.setPassword(user.getPassword());
		return userRepository.save(user);
	}

	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public User findUserById( Long id) {
		Optional<User> u = userRepository.findById(id);

		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}


	public boolean authenticateUser(String email, String password) {
		User user = userRepository.findByEmail(email);
	
		if (user == null) {
			return false;
		} else {
			if (password.equals(user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}




}
