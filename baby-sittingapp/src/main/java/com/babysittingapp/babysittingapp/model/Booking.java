package com.babysittingapp.babysittingapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="book")
public class Booking {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String nannyName;
	private String ownerName;
	
	/**
	 * @param id
	
	 * @param nannyName
	 * @param ownerName
	 */
	public Booking(  String nannyName, String ownerName) {
		super();
	
	
		this.nannyName = nannyName;
		this.ownerName = ownerName;
	}

	
	
	/**
	 * 
	 */
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getNannyName() {
		return nannyName;
	}
	public void setNannyName(String nannyName) {
		this.nannyName = nannyName;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
}
