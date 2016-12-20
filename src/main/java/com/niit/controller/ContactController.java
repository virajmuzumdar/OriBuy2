package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ContactDAO;
import com.niit.entities.Contact;

@Controller
public class ContactController {
	
	@Autowired
	ContactDAO contactDAOImpl;
	
	@RequestMapping("/sendcontact")
		public String submitForm(@RequestParam("cname") String contactName,@RequestParam("cnumber") String number,@RequestParam("cemail") String email)
		{
		Contact cnt=new Contact();
		cnt.setContactName(contactName);
		cnt.setNumber(number);
		cnt.setEmail(email);
		contactDAOImpl.createContact(cnt);
		
		return "ContactSaved";
		}
}
