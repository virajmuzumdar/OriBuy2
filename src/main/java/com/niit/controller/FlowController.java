package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDAO;
import com.niit.entities.Billing;
import com.niit.entities.Cart;
import com.niit.entities.Payment;

@Component
public class FlowController {
	
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private SessionFactory mySessionFactory;
	
	@Autowired
	HttpSession sess;
	
	
	@Transactional
	public void add(Payment payment,Billing billing) {
		Session session=mySessionFactory.getCurrentSession();
		Double total= (Double) sess.getAttribute("Total");
		String id=(String) sess.getAttribute("name");
		session.save(billing);
		payment.setTotal(total);
		payment.setUsername(id);
		payment.setBid(billing.getId());
		session.save(payment);
		
		System.out.println(id);
		List<Cart> list=cartDAO.list(id);
		for(Cart c:list)
		{
			Session sess = mySessionFactory.getCurrentSession();
			sess.delete(c);
		}

		
	}
		
	

}