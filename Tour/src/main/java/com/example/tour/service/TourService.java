package com.example.tour.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.example.tour.model.Booking;
import com.example.tour.model.Customer;
import com.example.tour.model.Tour;

public class TourService {
	private static final TourService instance = new TourService();
	private Map<Integer, Tour> tours;
	private Map<Integer, Customer> customers;

	public TourService() {
		init();
	}

	public static TourService tInstance() {
		return instance;
	}

	private void init() {
		tours = new HashMap<>();
		customers = new HashMap<>();
		
		Tour tour1 = new Tour(1, "PHÚ QUỐC (Khuyến mãi mùa hè)", "3 ngày 2 đêm", null, null, 0);
	}

	public Collection<Tour> getAllTours() {
		return tours.values();
	}

	public Tour getTour(Long id) {
		Tour tour = null;
		for (Tour t : tours.values()) {
			if (t.getId() == id) {
				tour = t;
				break;
			}
		}
		return tour;
	}

	public void saveCustomer(Customer customer) {
//		int id = tours.size() + 1;
//		customer.setId(id);
//		;
//
//		customers.put(id, customer);
	}

	public void saveBooking(Booking booking) {

	}
}
