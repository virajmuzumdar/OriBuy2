package com.niit.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.entities.User;

@Controller
public class HelloController {
	@RequestMapping({ "/", "home" })
	public String mainpage() {
		return "index";
	}

	@RequestMapping("/Contact")
	public String contactpage() {
		return "Contact";
	}

	@RequestMapping("/About")
	public String aboutpage() {
		return "About";
	}
	
	@RequestMapping("/Login")
	public String andarAaneWalaMethod() {
		return "Login";
	}

	@RequestMapping("/Logout")
	public String baharJaaneWalaMethod(Model model, HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping({ "/Register", "NewUser" })
	public String registerpage(Model model1) {
		model1.addAttribute("user", new User());
		return "Register";
	}

	@RequestMapping("/RegSuccess")
	public String regsuccess() {
		return "RegSuccess";
	}
	
	
	@RequestMapping("/validate")
	public String validate(Model model, HttpSession session, Principal principal)
	{
		String name = principal.getName();
		model.addAttribute("message", "You have successfully Logged-in");
		session.setAttribute("username", name);
		return "index";
	}
	
	@RequestMapping("/accessDenied")
	public String denial(Model model)
	{
		model.addAttribute("message1", "Error in Login details");
		return "Login";
	}
}
