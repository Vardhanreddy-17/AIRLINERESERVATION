package com.airline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.model.Customer;
import com.airline.model.Flight;
import com.airline.repository.CustomerRepository;
import com.airline.repository.FlightRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{

	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private FlightRepository flightRepository;
	
	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "customer added sucessfully";
	}


	@Override
	public Customer checkcustomerlogin(String username, String password) {
		return customerRepository.checkcustomerlogin(username, password);
	}

	@Override
	public List<Flight> viewallflights() {
		return flightRepository.findAll();
	}


	@Override
	public int updateseats(int id, int seats) {
		
		return customerRepository.updateseats(id, seats);
	}

}
