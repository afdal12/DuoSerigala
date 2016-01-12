package com.corebanking.login.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/Login")
	public void login(Model m){
		m.addAttribute("waktu", new Date());
	}
}
