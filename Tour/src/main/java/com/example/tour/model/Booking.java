package com.example.tour.model;

import java.util.Date;

public class Booking {
	private long id;
	private Customer customer;
	private Date departuteDate;
	private int noAdults;
	private int noChilrden;
	private Tour tour;

	public Booking(long id, Customer customer, Date departuteDate, int noAdults, int noChilrden, Tour tour) {
		super();
		this.id = id;
		this.customer = customer;
		this.departuteDate = departuteDate;
		this.noAdults = noAdults;
		this.noChilrden = noChilrden;
		this.tour = tour;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Date getDepartuteDate() {
		return departuteDate;
	}

	public void setDepartuteDate(Date departuteDate) {
		this.departuteDate = departuteDate;
	}

	public int getNoAdults() {
		return noAdults;
	}

	public void setNoAdults(int noAdults) {
		this.noAdults = noAdults;
	}

	public int getNoChilrden() {
		return noChilrden;
	}

	public void setNoChilrden(int noChilrden) {
		this.noChilrden = noChilrden;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

}
