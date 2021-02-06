package com.ajt.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/index", "/home" })
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("page");
		modelAndView.addObject("userClickedHome", true);
		modelAndView.addObject("title", "Home");
		return modelAndView;
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView modelAndView = new ModelAndView("page");
		modelAndView.addObject("userClickedAbout", true);
		modelAndView.addObject("title", "About Us");
		return modelAndView;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView modelAndView = new ModelAndView("page");
		modelAndView.addObject("userClickedContact", true);
		modelAndView.addObject("title", "Contact Us");
		return modelAndView;
	}
	
	@RequestMapping("/listProducts")
	public ModelAndView listProducts() {
		ModelAndView modelAndView = new ModelAndView("page");
		modelAndView.addObject("userClickedProducts", true);
		modelAndView.addObject("title", "Products");
		return modelAndView;
	}
	
}
