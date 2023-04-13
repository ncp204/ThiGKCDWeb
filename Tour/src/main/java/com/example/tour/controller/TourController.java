package com.example.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TourController {

	@GetMapping("/listTours")
	public String tours() {
		return "listTours";
	}
	
	@GetMapping("/tourDetails")
	public String tourDetail() {
		return "tourDetails";
	}
	
	@GetMapping("/bookingTour")
	public String bookingTour() {
		return "bookingTour";
	}
}