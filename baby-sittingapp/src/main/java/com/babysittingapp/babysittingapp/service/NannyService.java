package com.babysittingapp.babysittingapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.babysittingapp.babysittingapp.model.Nanny;
import com.babysittingapp.babysittingapp.repositories.NannyRepository;

@Service

public class NannyService {
	
	@Autowired
	NannyRepository nannyRepository;
	
	
	public Nanny findNannyById(Long id) {
		Optional<Nanny> u = nannyRepository.findById(id);

		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}
	

	public Nanny application(Nanny nanny, String name, String email, String phoneNo) {
		nanny.setName(name);
		
		nanny.setEmail(email);
		
		return nannyRepository.save(nanny);
	}
	public Nanny application(Nanny nanny, String name, String email, String qualification, String contact,String charge) {
		nanny.setName(name);
		nanny.setEmail(email);
		nanny.setQualification(qualification);
		nanny.setContact(contact);
		nanny.setCharge(charge);
	

		return nannyRepository.save(nanny);
	}


	public void deleteEmployeeById(long id) 
		 {
		 nannyRepository.deleteById(id);
		}
		// TODO Auto-generated method stub
		
	}

	
	
	/*public List<Nanny> showAllUsers(){
		List<Nanny> users = new ArrayList<Nanny>();
		for(Nanny nanny : nannyRepository.findAll()) {
			users.add(nanny);
		}
		
		return users;*/


	
	
	
	





	
	
