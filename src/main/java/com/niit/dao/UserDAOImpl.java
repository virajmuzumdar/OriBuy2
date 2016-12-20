package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.entities.User;

@Repository("userDAO")
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory mysessionFactory;

	public UserDAOImpl() {
		System.out.println("User Service Created");

	}

	public SessionFactory getMysessionFactory() {
		return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
		this.mysessionFactory = mysessionFactory;
	}

	@Transactional
	public void addUser(User user) {
		Session session = mysessionFactory.openSession();
		try {
			session.saveOrUpdate(user);
			System.out.println("User Record Created");

		} catch (HibernateException ex) {
			System.out.println("Could Not Create User " + ex.getMessage());
		}
	}

	@Transactional
	public void update(User U, int id) {
		System.out.println("User ID " + U.getId());
		Session session = mysessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		user.setfName(U.getfName());
		user.setlName(U.getlName());
		user.setNumber(U.getNumber());
		user.setUserName(U.getUserName());
		user.setPassword(U.getPassword());		
		session.update(user);
		System.out.println(U);
	}

	@Transactional
	public void delete(int id) {
		Session session = mysessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		session.delete(user);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> getUsers() {
		Session session = mysessionFactory.getCurrentSession();
		return session.createQuery("from User").list();
	}

	@Transactional
	public User getUserById(int id) {
		Session session = mysessionFactory.getCurrentSession();
		return (User) session.get(User.class, id);
	}
}
