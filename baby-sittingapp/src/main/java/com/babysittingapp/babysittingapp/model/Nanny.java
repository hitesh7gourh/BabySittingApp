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
@Table(name="nanny")
public class Nanny {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 3, message = "Username must be greater than 2 characters")
	private String name;
	
	@Email(message = "Email must be valid")
	private String email;
	
	@Size(min = 10, max = 10, message = "Phone number must be exactly 10 digits long")
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String contact;
	
	@Size(min = 3, message = "Username must be greater than 2 characters")
	private String qualification;
	
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String experience;
	
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String charge;

	



/**
 * 
 */


/**
 * @param name
 * @param email
 * @param contact
 * @param qualification
 * @param experience
 * @param charge
 */
public Nanny(String name, String email, String contact, String qualification, String experience, String charge) {

	this.name = name;
	this.email = email;
	this.contact = contact;
	this.qualification = qualification;
	this.experience = experience;
	this.charge = charge;

}

public Nanny() {
	
}

public Long getId() {
	return id;
}


public void setId(Long id) {
	this.id = id;
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
/**
 * @return the email
 */
public String getEmail() {
	return email;
}
/**
 * @param email the email to set
 */
public void setEmail(String email) {
	this.email = email;
}
/**
 * @return the contact
 */
public String getContact() {
	return contact;
}
/**
 * @param contact the contact to set
 */
public void setContact(String contact) {
	this.contact = contact;
}
/**
 * @return the qualification
 */
public String getQualification() {
	return qualification;
}
/**
 * @param qualification the qualification to set
 */
public void setQualification(String qualification) {
	this.qualification = qualification;
}
/**
 * @return the experience
 */
public String getExperience() {
	return experience;
}
/**
 * @param experience the experience to set
 */
public void setExperience(String experience) {
	this.experience = experience;
}
/**
 * @return the charge
 */
public String getCharge() {
	return charge;
}
/**
 * @param charge the charge to set
 */
public void setCharge(String charge) {
	this.charge = charge;
}








}
