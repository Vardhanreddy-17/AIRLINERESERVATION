package com.airline.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.airline.model.Admin;
import com.airline.model.Flight;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin,String>
{
	
	@Query("select a from Admin a where a.username=?1 and a.password=?2 ")
	public Admin checkadminlogin(String username,String password);
	
	
}
