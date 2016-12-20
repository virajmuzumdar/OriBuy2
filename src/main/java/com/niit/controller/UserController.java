package com.niit.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDAO;
import com.niit.entities.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAOImpl;
	

	@RequestMapping(value="/submitted", method = RequestMethod.POST)
	public ModelAndView submitForm2(@ModelAttribute("user") User user) {
		user.setRole("ROLE_USER");
		userDAOImpl.addUser(user);
		return new ModelAndView("redirect:/RegSuccess");
	}
	
	@RequestMapping("/ViewUsers")
	public ModelAndView viewusers() {
		List<User> list = userDAOImpl.getUsers();
		ModelAndView model = new ModelAndView("ViewUser");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/edituser", method = RequestMethod.GET)
	public String edit2(@RequestParam("id") int id, Model model1) {
		User user = userDAOImpl.getUserById(id);
		model1.addAttribute("user", user);
		return ("EditUser");
	}

	@RequestMapping(value = "/editeduser", method = RequestMethod.POST)
	public ModelAndView editsave2(@ModelAttribute("user") User U,@RequestParam("id") int id) {
		userDAOImpl.update(U, id);
		return new ModelAndView("redirect:/ViewUsers");
	}

	@RequestMapping(value = "/deleteuser", method = RequestMethod.GET)
	public String deleteuser(@RequestParam("id") int id) {
		userDAOImpl.delete(id);
		return ("redirect:/ViewUsers");
	}

}
