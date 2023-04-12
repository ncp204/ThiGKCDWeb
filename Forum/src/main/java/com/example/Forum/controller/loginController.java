package com.example.forum.controller;

import java.util.Collection;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.forum.model.Topic;
import com.example.forum.model.User;
import com.example.forum.service.ForumService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

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

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	@PostMapping("login")
	String loginHandle(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model,
			HttpSession session) {
		User loginUser = ForumService.getInstance().checkUser(user.getUsername(), user.getPassword());
		if (bindingResult.hasErrors() || loginUser == null) {
			return "login";
		}
		session.setAttribute("user", user);
		model.addAttribute("user", loginUser);
		Collection<Topic> topics = ForumService.getInstance().getTopics();
		model.addAttribute("topics", topics);
		return "redirect:/listTopics";
	}
}
