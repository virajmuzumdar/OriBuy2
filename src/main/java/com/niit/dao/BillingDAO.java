package com.niit.dao;

import java.util.List;

import com.niit.entities.Billing;

public interface BillingDAO {
	
	public List<Billing> list();

	public Billing get(String id);	
	
	public void add(Billing billing);
	
	public void update(Billing billing);

	public void delete(String id);

}