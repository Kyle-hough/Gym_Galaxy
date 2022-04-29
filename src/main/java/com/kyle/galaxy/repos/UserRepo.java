package com.kyle.galaxy.repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kyle.galaxy.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	// Checks for email
	Optional<User> findByEmail(String Email);

	// Gives all Users
	List<User> findAll();
}
