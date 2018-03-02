package com.javawebtutor.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javawebtutor.model.Orders;
import com.javawebtutor.model.User;
import com.javawebtutor.service.ProductService;
import com.javawebtutor.service.RegisterService;

/**
 * Servlet implementation class ProductServlet
 */
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Store in DB and Delete it when checkout is done 
		 PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		int total =  Integer.parseInt(request.getParameter("total"));
		int fries = Integer.parseInt(request.getParameter("Fries"));
		int burger = Integer.parseInt(request.getParameter("Burger"));
		int coffee = Integer.parseInt(request.getParameter("Coffee"));
		int soup = Integer.parseInt(request.getParameter("Soup"));
		
		
		request.getSession().setAttribute("total", total);	
		request.getSession().setAttribute("Fries", fries);
		request.getSession().setAttribute("coffee", coffee);
		request.getSession().setAttribute("soup", soup);
		request.getSession().setAttribute("burger", burger);
		// User user = new User(firstName,middleName,lastName, email,userId, password);
		
		User usr = (User)request.getSession().getAttribute("user");
		
		
		
		Orders ord = new Orders(usr.getUserId(),"total",total);
		
		 try {	
			 ProductService registerService = new ProductService();
			 boolean result = registerService.register(ord);		
		 }
		 finally {
			// out.println("Database entry is unsucessful");
			 response.sendRedirect("checkout.jsp");
		 }
				
	   
	         
	
		 
	}
		
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
