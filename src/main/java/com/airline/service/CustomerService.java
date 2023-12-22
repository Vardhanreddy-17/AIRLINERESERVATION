package com.airline.service;

import java.util.List;

import com.airline.model.Customer;
import com.airline.model.Flight;

public interface CustomerService
{
	public String addcustomer(Customer c);
	public Customer checkcustomerlogin(String email,String password);
	public List<Flight> viewallflights();
	
	public int updateseats(int id,int seats);
}
