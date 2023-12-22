package com.airline.controller;

import java.util.List;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airline.model.Admin;
import com.airline.model.Customer;
import com.airline.model.Flight;
import com.airline.service.AdminService;
import com.airline.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("login")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@GetMapping("admin")
	public ModelAndView admin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin");
		return mv;
	}
	@GetMapping("count-flights")
	@ResponseBody
	  public Map<String, Integer> countMaleCustomers() {
	      Map<String, Integer> result = new HashMap<>();
	      int fcount = (int)adminService.countFligths();
	      int seats=adminService.sumSeats();
	      result.put("fcount", fcount);
	      result.put("seats", seats);
	      return result;
	  }
	
	@PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String contact = request.getParameter("contact");
			
			Customer c = new Customer();
			c.setName(name);
			c.setEmail(email);
			c.setPassword(password);
			c.setContact(contact);
			
		    msg = customerService.addcustomer(c);
		    
		    mv.setViewName("displaymsg");
		    mv.addObject("message", msg);
		}
		catch(Exception e)
		{
			mv.setViewName("diaplayerror");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Admin a = adminService.checkadminlogin(username, password);
		ModelAndView mv = new ModelAndView();
		if(a!=null) 
		{
			mv.setViewName("adminhome");
		}
		else {
			mv.setViewName("admin");
			mv.addObject("message", "LoginFailed");
		}
		return mv;
		
	}
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Customer c = customerService.checkcustomerlogin(email, password);
		
		if(c!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("cid", c.getId());
			session.setAttribute("cname", c.getName());
			
			
			mv.setViewName("customerhome");
		}
		else {
			mv.setViewName("login");
			mv.addObject("Message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("customerhome")
	public ModelAndView customerhome(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerhome");
		
		HttpSession session = request.getSession();
		int cid = (int)session.getAttribute("cid");
		String cname = (String)session.getAttribute("cname");
		
		mv.addObject("cname", cname);
		mv.addObject("cid", cid);
		
		return mv;
	}
	
	@PostMapping("addflights")
	public ModelAndView addights(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try
		{
			String source = request.getParameter("source");
			String destination = request.getParameter("destination");
			String date = request.getParameter("date");
		    String sea = request.getParameter("seats");
		    int seat = Integer.parseInt(sea);
			
			Flight f = new Flight();
			
			f.setSource(source);
			f.setDestination(destination);
			f.setDate(date);
			f.setSeats(seat);
			
			
			msg = adminService.addflights(f);
			mv.setViewName("addflights");
			mv.addObject("message",msg);
			
			
		}
		catch(Exception e)
		{
			mv.setViewName("adminhome");
			msg = e.getMessage();
			mv.addObject("message",msg);
			
		}
		return mv;
		
	}
	
	@GetMapping("viewallflights")
	public ModelAndView viewallflights()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallflights");
		
		List<Flight> flightlist = customerService.viewallflights();
		mv.addObject("flightlist", flightlist);
		return mv;
	}
	

	
   @PostMapping("Update")
   public ModelAndView updateseats(int seats,HttpServletRequest request)
   {
	   ModelAndView mv = new ModelAndView();
	   try
	   {
		   String seatss = request.getParameter("seatss");
		   int bseats = Integer.parseInt(seatss);
		   
		   Flight f = new Flight();
		   HttpSession session = request.getSession();
		   
		   
		   
	   }
	   catch(Exception e)
	   {
		   
	   }
	   return mv;
   }
	
}
