package com.niit.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.ProductDAO;
import com.niit.entities.Product;
import com.niit.entities.User;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAOImpl;
	
	@ModelAttribute
	public Product initProduct()
	{
		return new Product();
	}

	@RequestMapping("/saveproduct")
	public ModelAndView submitForm(@ModelAttribute Product product) {
		
		if (!product.getPhoto().isEmpty()) {
			productDAOImpl.addProduct(product);
			try {
				File dir= new File("C:/Users/Viraj/workspace2/EcommerceWebsite/src/main/webapp/resources/pictures");
				byte[] bytes = product.getPhoto().getBytes();
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir,product.getId() + ".jpg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println("You successfully uploaded file=" + product.getProductName()); 
			} catch (Exception e) {
				System.out.println("You failed to upload " + product.getProductName() + " => " + e.getMessage());
			}
		} else {
			System.out.println("You failed to upload " + product.getProductName()
					+ " because the file was empty.");
		}
	
		return new ModelAndView("redirect:/ViewProducts");
	}
	
	@RequestMapping("/ViewProducts")
	public ModelAndView viewproducts() {
		List<Product> list = productDAOImpl.getProducts();
		ModelAndView model = new ModelAndView("ViewProducts");
		model.addObject("list", list);
		return model;
	}
	@RequestMapping("/NewProd")
	public String newproduct(Model model) {
		model.addAttribute("product", new Product());
		return "AddProduct";
	}
	
	@RequestMapping("/Products")
	public ModelAndView productsWalaPage() {
		List<Product> list = productDAOImpl.getProducts();
		ModelAndView model = new ModelAndView("ViewProducts");
		model.addObject("list", list);
		return model;
	}
	
	@RequestMapping(value = "/viewproduct", method = RequestMethod.GET)
	public String dekho(@RequestParam("id") String id, Model model) {
		Product product = productDAOImpl.getProdById(id);
		model.addAttribute("product", product);
		return ("View");
	}

	@RequestMapping(value = "/editproduct", method = RequestMethod.GET)
	public String edit(@RequestParam("id") String id, Model model) {
		Product product = productDAOImpl.getProdById(id);
	
		model.addAttribute("product", product);
		return ("EditProduct");
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("product") Product P,@RequestParam("id") String id) {
		productDAOImpl.update(P, id);
		return new ModelAndView("redirect:/ViewProducts");
	}

	@RequestMapping(value = "/deleteproduct", method = RequestMethod.GET)
	public String deleteprod(@RequestParam("id") String id) {
		productDAOImpl.delete(id);
		return ("redirect:/ViewProducts");
	}
	
}
