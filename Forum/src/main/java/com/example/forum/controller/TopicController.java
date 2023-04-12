package com.example.forum.controller;

import java.util.Collection;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.forum.model.Message;
import com.example.forum.model.Topic;
import com.example.forum.model.User;
import com.example.forum.service.ForumService;

import jakarta.servlet.http.HttpSession;

@Controller
public class TopicController {
	@GetMapping("listTopics")
	public String listTopics(Model model, HttpSession session) {
		Collection<Topic> topics = ForumService.getInstance().getTopics();
		model.addAttribute("topics", topics);
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "listTopics";
	}

	@GetMapping("/showTopic/{id}")
	public String showTopic(@PathVariable int id, Model model, HttpSession session) {
		Topic topic = ForumService.getInstance().findTopic(id);
		model.addAttribute("topic", topic);
		model.addAttribute("user", session.getAttribute("user"));
		return "showTopic";
	}

	@GetMapping("/newTopic")
	public String newTopic(Model model, HttpSession session) {
		model.addAttribute("user", session.getAttribute("user"));
		return "newTopic";
	}

	@PostMapping("/newTopic")
	public String newTopicpost(Topic topic, Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		topic.setCreator(user);
		ForumService.getInstance().addTopic(topic);
		return "redirect:/listTopics";
	}

	@GetMapping("replyTopic/{id}")
	public String reply(@PathVariable int id, Model model, HttpSession session) {
		Topic topic = ForumService.getInstance().findTopic(id);
		model.addAttribute("topic", topic);
		return "replyTopic";
	}

	@PostMapping("/replyTopic/{id}")
	public String postReply(@PathVariable int id, Message message, Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		message.setCreator(user);
		Topic topic = ForumService.getInstance().findTopic(id);
		topic.addMessage(message);
		return "redirect:/listTopics";
	}
}
