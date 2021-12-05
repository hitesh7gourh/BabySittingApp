package com.babysittingapp.babysittingapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.babysittingapp.babysittingapp.model.Booking;
import com.babysittingapp.babysittingapp.repositories.BookingRepository;

public class BookingService {
	
	@Autowired
	BookingRepository bookingRepository;
	
	
	public Booking findBookingById(Long id) {
		Optional<Booking> u = bookingRepository.findById(id);

		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}
	

	public Booking application(Booking booking, String nannyName, String ownerName) {
		booking.setNannyName(nannyName);
		
		booking.setOwnerName(ownerName);
		
		return bookingRepository.save(booking);
	}
	public Booking application1(Booking booking, String nannyName, String ownerName) {
		booking.setNannyName(nannyName);
		booking.setOwnerName(ownerName);
	
	
	

		return bookingRepository.save(booking);
	}


}
