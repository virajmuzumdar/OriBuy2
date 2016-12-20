package com.niit.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.entities.Contact;


@Repository
public class ContactDAOImpl implements ContactDAO {

	
	@Autowired
	SessionFactory mysessionFactory;
	
	@Transactional
	public void createContact(Contact contact) {
		Session session = mysessionFactory.openSession();
		try{
			session.saveOrUpdate(contact);
			System.out.println("User Record Created");
			
		}
		catch(HibernateException ex){
			System.out.println("Could Not Create User " + ex.getMessage());
			
		}
		finally
		{
			session.close();
		}

	}

}
