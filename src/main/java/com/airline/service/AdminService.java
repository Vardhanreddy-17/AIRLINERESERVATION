package com.airline.service;

import java.util.List;

import com.airline.model.Admin;
import com.airline.model.Customer;
import com.airline.model.Flight;

public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);
	public String addflights(Flight f);
	public long countFligths();
	public int sumSeats();
	
}
