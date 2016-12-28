package com.niit.dao;

import java.util.List;

import com.niit.entities.Cart;

public interface CartDAO {
	
	public List<Cart> list(String uid);
	
	public Cart get(int id);
	
	public void update(int quantity,String cid);

	public void delete(String id);

	public void add(Cart cart);
	
}