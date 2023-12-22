package com.airline.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.airline.model.Customer;

import jakarta.transaction.Transactional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>
{
	@Query(" select c from Customer c where c.email=?1 and c.password=?2 ")
	public Customer checkcustomerlogin(String email,String password);
	
	  @Modifying
	  @Transactional //commit changes
	  @Query("update Flight f set f.seats=?2  where f.id=?1")
	  public int updateseats(int id,int seats);
}
