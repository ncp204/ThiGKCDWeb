package com.example.tour.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.example.tour.model.Booking;
import com.example.tour.model.Customer;
import com.example.tour.model.Tour;
import com.oracle.wls.shaded.org.apache.regexp.recompile;

public class TourService {
	private static final TourService instance = new TourService();
	private Map<Integer, Tour> tours;
	private Map<Integer, Customer> customers;
	private Map<Integer, Booking> bookings;

	public TourService() {
		init();
	}

	public static TourService getInstance() {
		return instance;
	}

	private void init() {
		tours = new HashMap<>();
		customers = new HashMap<>();
		bookings = new HashMap<>();

		String description = "<b>Ngày 01 (Thứ bảy): PHỐ BIỂN NHA TRANG.</b>\r\n "
				+ "Tham quan suối Hoa Lan. Khám phá Mê Cung Trận Đồ. Chèo thuyền, ngắm cảnh trên Hô Nghinh Xuân - Thủy Tiên.\r\n "
				+ "KDL Hòn Lào - Đảo Khỉ. Tham gia chương trình giải trí tại Thế giới giải trí Vinpear Land.\r\n"
				+ "<b>Ngày 02 (Chủ nhật): NHA TRANG -SÀI GÒN (tàu lửa)</b>\r\n"
				+ "Tham quan Tháp Ba Ponagar. Chùa Long Sơn. Ngắm cảnh Hòn Chồng, núi Cô Tiên. Khu du lịch Suối Kháng Nóng Tháp Bà.\r\n"
				+ "Ăn tối. xe đưa quý khách ra ga Nha Trang khởi hành về Sài Gòn bằng tàu lửa. Kết thúc chuyến tham quan, hẹn ngày gặp lại.";

		Tour tour1 = new Tour(1, "PHÚ QUỐC (Khuyến mãi mùa hè)", description, "3 ngày 2 đêm", "Máy bay", "Hằng ngày",
				1595000);
		Tour tour2 = new Tour(2, "NHA TRANG", description, "2 ngày 2 đêm", "Tàu hỏa", "Tối thứ 6 và CN", 1540000);
		Tour tour3 = new Tour(3, "CÔN ĐẢO", description, "3 ngày 2 đêm", "Ô tô", "Hàng ngày", 1345000);
		Tour tour4 = new Tour(4, "PHAN THIẾT-MŨI NÉ", description, "2 ngày 1 đêm", "Thuyền", "Thứ 7 mỗi tuần", 1250000);
		Tour tour5 = new Tour(5, "ĐÀ LẠT - ĐỒI MỘNG MƠ", description, "4 ngày 3 đêm", "Mô tô", "Thứ 7 mỗi tuần",
				1320000);
		Tour tour6 = new Tour(6, "BUÔN MA THUỘT - GIA LAI - KONTUM", description, "4 ngày 3 đêm", "Xe đạp", "Định kỳ",
				1790000);

		tours.put((int) tour1.getId(), tour1);
		tours.put((int) tour2.getId(), tour2);
		tours.put((int) tour3.getId(), tour3);
		tours.put((int) tour4.getId(), tour4);
		tours.put((int) tour5.getId(), tour5);
		tours.put((int) tour6.getId(), tour6);
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
		customers.put((int) customer.getId(), customer);
	}

	public void saveBooking(Booking booking) {
		bookings.put((int) booking.getId(), booking);
	}

	public Booking getBooking(Long id) {
		for (Booking bk : bookings.values()) {
			if (bk.getCustomer().getId() == id) {
				return bk;
			}
		}
		return null;
	}
}
