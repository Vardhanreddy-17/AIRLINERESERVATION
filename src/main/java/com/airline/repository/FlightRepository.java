package com.airline.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.airline.model.Flight;

public interface FlightRepository extends JpaRepository<Flight, Integer>
{
	@Query("select sum(seats) from Flight f")
	public int sumSeats();
}
