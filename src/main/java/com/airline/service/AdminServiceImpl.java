package com.airline.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.model.Admin;
import com.airline.model.Customer;
import com.airline.model.Flight;
import com.airline.repository.AdminRepository;
import com.airline.repository.CustomerRepository;
import com.airline.repository.FlightRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private FlightRepository flightRepository;


	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String addflights(Flight f) 
	{
		flightRepository.save(f);
		return "Flight added successfully";
		
	}

	@Override
	public long countFligths() {
		// TODO Auto-generated method stub
		return flightRepository.count();
	}

	@Override
	public int sumSeats() {
		// TODO Auto-generated method stub
		return flightRepository.sumSeats();
	}

	
}
