package com.example.employee.model;

import java.util.Date;

public class Employee {
	private String id;
	private String name;
	private boolean male;
	private Date birthday;
	private String address;
	private String phone;
	private String department;
	private String title;
	private long wageRate;

	public Employee(String id, String name, boolean male, Date birthday, String address, String phone,
			String department, String title, long wageRate) {
		super();
		this.id = id;
		this.name = name;
		this.male = male;
		this.birthday = birthday;
		this.address = address;
		this.phone = phone;
		this.department = department;
		this.title = title;
		this.wageRate = wageRate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isMale() {
		return male;
	}

	public void setMale(boolean male) {
		this.male = male;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public long getWageRate() {
		return wageRate;
	}

	public void setWageRate(long wageRate) {
		this.wageRate = wageRate;
	}

}
