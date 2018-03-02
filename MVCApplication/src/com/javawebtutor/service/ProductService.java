package com.javawebtutor.service;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.Orders;
import com.javawebtutor.model.User;
public class ProductService {
	
public boolean register(Orders user){
	 Session session = HibernateUtil.openSession();
	// if(isUserExists(user)) return false;	
	
	 Transaction tx = null;	
	 try {
		 tx = session.getTransaction();
		 tx.begin();
		 session.saveOrUpdate(user);		
		 tx.commit();
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }	
	 return true;
}

public int isUser(String userId){
	 Session session = HibernateUtil.openSession();
	 boolean result = false;
	 Transaction tx = null;
	 long u = 0;
	 int quant = 0;
	
	 try{
		 tx = session.getTransaction();
		 tx.begin();
		 System.out.println("from orders where userid='"+userId+"'");
		// Query query = session.createQuery("from Orders where userid='"+userId+"'");
		 Query query = session.createQuery( "Select max(id) from Orders where userid='"+userId+"'"); // update 
		 
		 u = (Long) query.uniqueResult();
		 
		 query = session.createQuery( "Select quantity from Orders where id='"+u+"'");
		 quant =  (Integer) query.uniqueResult();
		 
		 System.out.println(" ttttooooottaalll");
		 System.out.println(u);
		 tx.commit();
		
	 }catch(Exception ex){
		 System.out.println(ex);
		 if(tx!=null){
			 tx.rollback();
		 }
	 }finally{
		 session.close();
	 }
	 return quant;
}

}