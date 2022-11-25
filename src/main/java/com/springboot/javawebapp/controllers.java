package com.springboot.javawebapp;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controllers {

	@RequestMapping("/home")
	public String home() {
		return "This is a Spring Boot Web application";
	}

	@RequestMapping("/about")
	public String about() {
		return "This is a about page";
	}
}
