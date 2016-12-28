package com.niit.controller;




import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDAO;
import com.niit.entities.Cart;
import com.niit.entities.Product;



	@Controller
	public class CartController {

		@Autowired
		private CartDAO cartDAO;
		
		@RequestMapping(value="updateCart", method=RequestMethod.GET)
		
		public ModelAndView updateCart(Cart cart,@RequestParam("quantity")int quantity,@RequestParam("name")String name,
				Model model,@RequestParam("cid")String id,HttpSession session){
			double total=0;
			cartDAO.update(quantity,id);
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv=new ModelAndView("Cart");
			mv.addObject("cart", list);
		    return mv;
			
		}
			

		@RequestMapping("addCart")
		public ModelAndView addCart(Cart cart,@RequestParam("id")String id,
				@RequestParam("name")String name,Model model,HttpSession session) {
            double total=0;      
		    cart.setUid(name);
			cart.setPid(id);
			cart.getPprice();
			cart.setQuantity(1);   
			cartDAO.add(cart);
            List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv=new ModelAndView("Cart");
			mv.addObject("cart", list);
		    return mv;
            }		
		
		@RequestMapping(value="deleteCart", method=RequestMethod.GET)
		public ModelAndView deleteCart(Cart cart,@RequestParam("id")String id,
				@RequestParam("name")String name,Model model,HttpSession session) {
			double total=0;
			cartDAO.delete(id);
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv=new ModelAndView("Cart");
			mv.addObject("cart", list);
		    return mv;
		 }
			
		@RequestMapping(value="getAllCart", method=RequestMethod.GET)
		public ModelAndView getAllCart(@RequestParam("name")String name,Model model,HttpSession session) {
			double total=0;
		   List<Cart> list=cartDAO.list(name);
		   for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv = new ModelAndView("Cart");
			mv.addObject("cart", list);

			return mv;
		}
		

	}