package com.babysittingapp.babysittingapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 3, message = "Username must be greater than 2 characters")
	private String name;
	
	@Email(message = "Email must be valid")
	private String email;
	
	
	
	@Size(min=5, message="Password must be greater than 4 characters")
	private String password;
	
	@Size(min = 10, max = 10, message = "Phone number must be exactly 10 digits long")
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String contact;
	

	public Long getId() {
		return id;
	}
	/**
	 * @param name
	 * @param email
	 * @param password
	 * @param contact
	
	 */
	public User(String name, String email, String password, String contact) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.contact = contact;
	
	}
	/**
	 * 
	 */
	public User() {
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}



	

}
