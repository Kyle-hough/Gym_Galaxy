package com.kyle.galaxy.serv;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.kyle.galaxy.models.LoginUser;
import com.kyle.galaxy.models.User;
import com.kyle.galaxy.repos.UserRepo;


@Service
public class UserServ {

	@Autowired
	private UserRepo userRepo;

	// Register validations and creation
	public User register(User newUser, BindingResult result) {
		// find by email returns an optional
		Optional<User> possibleUser = userRepo.findByEmail(newUser.getEmail());
		if (possibleUser.isPresent()) {
			result.rejectValue("email", "register", "Email already taken.");
		}
		// checking pass to confirm
		if (!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "register", "Passwords does not match");
		}
		if (result.hasErrors()) {
			return null;
		} else {
			String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(hashed);
			// Save user to DB
			return userRepo.save(newUser);
		}
	}

	// Login validations and login
	public User login(LoginUser newLoginObject, BindingResult result) {
		// TO-DO: Additional validations!
		Optional<User> possibleUser = userRepo.findByEmail(newLoginObject.getEmail());
		if (!possibleUser.isPresent()) {
			result.rejectValue("email", "login", "Login Error");
		} else {
			User user = possibleUser.get();
			// check password
			if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())) {
				result.rejectValue("password", "login", "Invalid Password!");
			}
			// return null if errors
			if (result.hasErrors()) {
				return null;
			} else {
				return user;
			}
		}
		return null;
	}

	// Find one user
	public User findOne(Long id) {
		Optional<User> newUser = userRepo.findById(id);
		if (newUser.isPresent()) {
			return newUser.get();
		} else {
			return null;
		}
	}
}
