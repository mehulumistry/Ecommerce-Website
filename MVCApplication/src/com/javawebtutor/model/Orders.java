package com.javawebtutor.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Orders implements Serializable {
    
    @Id @GeneratedValue
    private Long id;
    private String userid;
    private String productname;
   // private List<String> productname;
    private int quantity;
    

    
    
    public Orders() {
    }

    
    public Orders(String userid, String productname, int quantity) {
        this.userid = userid;
        this.productname = productname;
        this.quantity = quantity;
  
    }
    
    public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getProductname() {
		return productname;
	}


	public void setProductname(String productname) {
		this.productname = productname;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

  
}
