package com.springboot.javawebapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class JavaWebAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaWebAppApplication.class, args);
	}

	@RequestMapping("/")
	public String home() {
		return "This is a Spring Boot Web application";
	}

	@RequestMapping("/about")
	public String about() {
		return "This is a about page";
	}
}
