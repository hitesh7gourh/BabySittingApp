package com.babysittingapp.babysittingapp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babysittingapp.babysittingapp.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
	List <Booking> findAll();

}
