package com.example.Forum.controller;

import com.example.Forum.model.Message;
import com.example.Forum.model.Topic;
import com.example.Forum.model.User;
import com.example.Forum.service.ForumService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;

import org.springframework.ui.Model;

import java.util.Collection;
import java.util.Date;
import java.util.List;

@Controller
@SessionAttributes("user")
public class LoginController {

	@GetMapping("/login")
	String login(Model model, HttpSession session) {
		User user = new User("", "", "", null);
		model.addAttribute("user", user);

		session.setAttribute("user", user);
		return "login";
	}

	@PostMapping("login")
	String loginHandle(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
		User loginUser = ForumService.getInstance().checkUser(user.getUsername(), user.getPassword());

		if (bindingResult.hasErrors() || loginUser == null) {
			return "login";
		}

		model.addAttribute("user", loginUser);
		Collection<Topic> topics = ForumService.getInstance().getTopics();
		model.addAttribute("topics", topics);

		return "redirect:/listTopics";
	}

}
