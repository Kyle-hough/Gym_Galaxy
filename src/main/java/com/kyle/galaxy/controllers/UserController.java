package com.kyle.galaxy.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kyle.galaxy.models.LoginUser;
import com.kyle.galaxy.models.User;
import com.kyle.galaxy.serv.UserServ;

@Controller
public class UserController {

	@Autowired
	private UserServ userServ;
	//Render register/login page
			@GetMapping("/")
			public String index(Model model) {
				// allows form for register
				model.addAttribute("newUser" , new User());		
				return "register.jsp";
			}
			
			@GetMapping("/login")
			public String loginScreen(Model model) {
				model.addAttribute("newLogin", new LoginUser());
				return "login.jsp";
			}

			//Register a new user
			@PostMapping("/register")
			public String register(@Valid @ModelAttribute("newUser")User newUser, BindingResult result, HttpSession sesh, Model model) {
				userServ.register(newUser, result);
				if (result.hasErrors()) {
					model.addAttribute("newLogin", new LoginUser());
					model.addAttribute("newUser", new User());
					return "register.jsp";
				} else {
					sesh.setAttribute("user_id", newUser.getId());
					return "redirect:/home";
				}
				
			}

			//Login
			@PostMapping("/login")
			public String login(@Valid @ModelAttribute("newLogin")LoginUser newLogin, BindingResult result, HttpSession sesh, Model model) {
				User user = userServ.login(newLogin, result);
				if (result.hasErrors() ) {
					
					model.addAttribute("newLogin", new LoginUser());
					return "login.jsp";
				} else {
					sesh.setAttribute("user_id", user.getId());
					return "redirect:/home";
				}
			}

}
