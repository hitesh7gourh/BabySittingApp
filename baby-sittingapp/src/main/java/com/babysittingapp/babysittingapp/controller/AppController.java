package com.babysittingapp.babysittingapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.babysittingapp.babysittingapp.model.Booking;
import com.babysittingapp.babysittingapp.model.Nanny;
import com.babysittingapp.babysittingapp.model.User;
import com.babysittingapp.babysittingapp.repositories.BookingRepository;
import com.babysittingapp.babysittingapp.repositories.NannyRepository;
import com.babysittingapp.babysittingapp.service.NannyService;
import com.babysittingapp.babysittingapp.service.UserService;

@Controller
public class AppController {
	@Autowired
	UserService userService;

	@Autowired
	NannyRepository nannyRepository;

	@Autowired
	NannyService nannyService;
	
	@Autowired
	BookingRepository bookingRepository;
	

	// home
	@RequestMapping(value = "/")
	public String home(Model model, HttpSession session)
	{
		
		return "welcome";
	}

	// Login page
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	// Registration page
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String registerUser(@ModelAttribute("user") User user) {
		return "registration";
	}

	@PostMapping(value = "/reg")
	public String newUserRegister(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
//		
		if (result.hasErrors()) {
			return "registration";
		}
		userService.registerUser(user);
		session.setAttribute("userid", user.getId());
		return "/login";
	}

	// NannyRegistration page
	@RequestMapping(value = "/NannyRegistration", method = RequestMethod.GET)
	public String nannyUser() {
		return "NannyRegistration";
	}

	@PostMapping(value = "/NannyRegistration")
	public String newNannyRegister(@Valid @ModelAttribute("nanny") Nanny nanny,BindingResult result) {
		if(result.hasErrors()) {
			return "NannyRegistration";
		}
		else {
		nannyRepository.save(nanny);
		return "nannythankyou";
		}
	}

	@PostMapping(value = "/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, RedirectAttributes r) {
		boolean success = userService.authenticateUser(email, password);

		if (email.length() < 1) {
			r.addFlashAttribute("error", "Email field cannot be blank.");
			return "redirect:/login";
		} else if (password.length() < 1) {
			r.addFlashAttribute("error", "Please enter your password.");
			return "redirect:/login";
		} else if (!success) {
			r.addFlashAttribute("error", "Email and password do not match.");
			return "redirect:/login";
		} else {
			User user = userService.findByEmail(email);
			Long id = user.getId();
			session.setAttribute("userid", id);
			return "nanny";
		}
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// Payment
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment() {
		return "payment";
	}
	

	@PostMapping(value = "/payment")
	public String NannyBooking(Booking booking) {

		bookingRepository.save(booking);
		
		return "thankyou";
	}
	
	
	

	// Thanks
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String thankyou() {
		return "thankyou";
	}



	// NannyDetails
	@GetMapping(value = "/table")
	public String services(ModelMap model, HttpSession session) {

		List<Nanny> nanny = nannyRepository.findAll();
		model.put("nanny", nanny);

		return "table";
	}
	
	// BookingHistory
	@GetMapping(value = "/table2")
	public String Booking(ModelMap model, HttpSession session) {
//			
		List<Booking> booking = bookingRepository.findAll();
		model.put("booking", booking);

		return "table2";
	}

	@RequestMapping(value="/Admin",  method = RequestMethod.GET)
	public String Adminlogin1() {
		return "Admin";
	}
	
	
	//Booking Nanny
	@RequestMapping(value="/delete-nanny", method =RequestMethod.GET)
	public String deleteEmployee(@RequestParam long id) {
		
		// call delete Nanny method 
		nannyService.deleteEmployeeById(id);
		return "redirect:/table";
	}
	
	
	//AdminLogin
	
	@RequestMapping(value="/login2",  method = RequestMethod.GET)
	public String Adminlogin() {
		return "login2";
	}

	
	@PostMapping(value = "/login2")
    public String login (@RequestParam("email") String email, @RequestParam("password") String password) {
    

    		if(email.equals("hitesh") && password.equals("123"))
    		{
    			return "Admin";
    		}
    		else {
    			return "login2";
 
    	
    	}
    }
	
	

	
}
