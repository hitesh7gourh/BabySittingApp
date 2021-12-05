package com.babysittingapp.babysittingapp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babysittingapp.babysittingapp.model.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findAll();
	
	User findByEmail(String email);

}
