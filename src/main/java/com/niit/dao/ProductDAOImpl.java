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

import com.niit.entities.Product;

@Repository("productDAO")
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory mysessionFactory;

	public ProductDAOImpl() {
		System.out.println("Product Service Created");

	}

	public SessionFactory getMysessionFactory() {
		return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
		this.mysessionFactory = mysessionFactory;
	}

	@Transactional
	public void addProduct(Product product) {
		Session session = mysessionFactory.openSession();
		try {
			session.saveOrUpdate(product);
			System.out.println("Product Record Created");

		} catch (HibernateException ex) {
			System.out.println("Could Not Create Product " + ex.getMessage());
		}
	}

	@Transactional
	public void update(Product P, int id) {
		System.out.println("Product ID " + P.getId());
		Session session = mysessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);
		product.setDescription(P.getDescription());
		product.setProductName(P.getProductName());
		product.setPrice(P.getPrice());
		product.setQuantity(P.getQuantity());
		product.setCategory(P.getCategory());
		session.update(product);
		System.out.println(P);
	}

	@Transactional
	public void delete(int id) {
		Session session = mysessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);
		session.delete(product);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> getProducts() {
		Session session = mysessionFactory.getCurrentSession();
		return session.createQuery("from Product").list();
	}

	@Transactional
	public Product getProdById(int id) {
		Session session = mysessionFactory.getCurrentSession();
		return (Product) session.get(Product.class, id);
	}
}
