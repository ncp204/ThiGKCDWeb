package com.example.tour.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.tour.model.Booking;
import com.example.tour.model.Customer;
import com.example.tour.model.Tour;
import com.example.tour.service.TourService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class TourController {

	@GetMapping("/listTours")
	public String tours(Model model) {
		Collection<Tour> tours = TourService.getInstance().getAllTours();
		model.addAttribute("tours", tours);
		return "listTours";
	}

	@GetMapping("/tourDetails/{id}")
	public String tourDetail(@PathVariable int id, Model model) {
		Tour tour = TourService.getInstance().getTour((long) id);
		model.addAttribute("tour", tour);
		return "tourDetails";
	}

	@GetMapping("/bookingTour/{id}")
	public String bookingTour(@PathVariable int id, Model model) {
		Tour tour = TourService.getInstance().getTour((long) id);
		model.addAttribute("tour", tour);
		return "bookingTour";
	}

	@PostMapping("/bookingTour/{id}")
	public ModelAndView addCustomerToTour(@PathVariable int id, HttpServletRequest request) throws ParseException {
		Tour tour = TourService.getInstance().getTour((long) id);

		String name = request.getParameter("fullName");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		Customer customer = new Customer(id, name, address, email, phone);

		SimpleDateFormat inputFormatter = new SimpleDateFormat("yyyy-MM-dd");
		Date inputDate = inputFormatter.parse(request.getParameter("departuteDate"));
		SimpleDateFormat outputFormatter = new SimpleDateFormat("dd/MM/yyyy");
		String outputDate = outputFormatter.format(inputDate);
		Date departureDate = outputFormatter.parse(outputDate);
		String adults = request.getParameter("noAdults");
		String childrens = request.getParameter("noChildrens");
		int noAdults = adults != null ? Integer.parseInt(adults) : 1;
		int noChilrdens = childrens != null ? Integer.parseInt(childrens) : 0;
		Booking booking = new Booking(id, customer, departureDate, noAdults, noChilrdens, tour);

		TourService.getInstance().saveCustomer(customer);
		TourService.getInstance().saveBooking(booking);

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/confirm/" + customer.getId());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setView(redirectView);
		return modelAndView;
	}

	@GetMapping("/confirm/{id}")
	public String confirm(@PathVariable int id, Model model) {
		Booking booking = TourService.getInstance().getBooking((long) id);
		model.addAttribute("booking", booking);
		model.addAttribute("tour", booking.getTour());
		model.addAttribute("customer", booking.getCustomer());
		return "confirm";
	}
}