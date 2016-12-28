package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.entities.Cart;
import com.niit.entities.Product;

    @EnableTransactionManagement
    @Repository("cartDAO")
	public class CartDAOImpl implements CartDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public CartDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")		
		@Transactional
		public List<Cart> list(String uid){
			Session session=sessionFactory.getCurrentSession();
			Criteria criteria=session.createCriteria(Cart.class);
			criteria.add(Restrictions.eq("uid", uid));
			List<Cart> cart=criteria.list();
			return  cart;
			
		}
		
		@Transactional
		public Cart get(int id) {
			return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
		}

		@Transactional
		public void add(Cart cart) {
			
			Session session=sessionFactory.getCurrentSession();
			String id=cart.getPid();
			Product product=(Product) session.get(Product.class,id);
			cart.setPprice(product.getPrice());
			cart.setPname(product.getProductName());
			session.save(cart);
			
		}
		
		@Transactional
		public void delete(String id) 
		{
			Cart c = new Cart();
			c.setCid(id);
			sessionFactory.getCurrentSession().delete(c);
			
			
    }

		@Transactional
		public void update(int quantity,String cid) {
			Session session=sessionFactory.getCurrentSession();
			Cart cart=(Cart) session.get(Cart.class, cid);
			Query q=(Query) session.createQuery("update Cart set quantity=:t where cid=:id");
			q.setParameter("t", quantity);
			q.setParameter("id", cid);
			
			q.executeUpdate();
			session.update(cart);
			
		}
		

    }