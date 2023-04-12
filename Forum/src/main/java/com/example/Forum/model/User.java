package com.example.Forum.model;

import jakarta.validation.constraints.Size;

import java.util.Date;

public class User {
	@Size(min =3, max =50)
	private String username;
	@Size(min = 3, max = 15)
	private String password;
	private String email;
	private Date joinDate;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public User(String username, String password, String email,
			Date joinDate) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "User{" +
				"username='" + username + '\'' +
				", password='" + password + '\'' +
				", email='" + email + '\'' +
				", joinDate=" + joinDate +
				'}';
	}
}
