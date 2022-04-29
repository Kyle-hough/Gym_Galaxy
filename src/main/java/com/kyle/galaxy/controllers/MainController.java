package com.kyle.galaxy.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kyle.galaxy.models.Cart;
import com.kyle.galaxy.models.User;
import com.kyle.galaxy.serv.UserServ;

@Controller
public class MainController {
	@Autowired
	private UserServ userServ;
	
	// Home
	@GetMapping("/home")
	public String home(HttpSession sesh, Model model) {
		if (sesh.getAttribute("cart") == null){
			Cart cart = new Cart();
			sesh.setAttribute("cart", cart);
		}
		return "home.jsp";
	}
	
	// Account
	@GetMapping("/update")
	public String update(Model model) {
		model.addAttribute("newUser" , new User());
		return "edit.jsp";
	}
	@GetMapping("/cart")
	public String cart(Model model) {
		model.addAttribute("newUser" , new User());
		return "cart.jsp";
	}
	

}
