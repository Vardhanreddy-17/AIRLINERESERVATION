package com.airline.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="customer_table")
public class Customer 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="customer_id")
	private int id;
	@Column(name="customer_name",nullable = false,length = 50)
	private String name;
	@Column(name="customer_email",nullable = false,unique=true)
	private String email;
	@Column(name="customer_password",nullable=false)
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Column(name="customer_contact",nullable = false)
	private String contact;
	
	
}
