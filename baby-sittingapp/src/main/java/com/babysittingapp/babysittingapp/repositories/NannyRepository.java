package com.babysittingapp.babysittingapp.repositories;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babysittingapp.babysittingapp.model.Nanny;




@Repository
public interface NannyRepository extends JpaRepository <Nanny , Long>{

	List <Nanny> findAll();


	
	

}
