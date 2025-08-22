package com.tim.booteh.controller;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class BootehController {
	
	private static final Logger logger  = LogManager.getLogger(BootehController.class);
	
	
	@RequestMapping("/")
	public String home() {
		logger.info("home accessed");
		
		
		
		return " Booteh Home!!!!";
	}
	

}
