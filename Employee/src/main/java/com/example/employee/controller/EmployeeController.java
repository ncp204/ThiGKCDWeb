package com.example.employee.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.employee.model.Employee;
import com.example.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	@GetMapping("/")
	private String showEmployeeList(Model model) {
		Collection<Employee> listEmployee = EmployeeService.getInstance().getEmployees();
		model.addAttribute("listEmployee", listEmployee);

		return "dsnhanvien";
	}

	@GetMapping("/detail/{id}")
	private String viewEmployee(@PathVariable String id, Model model) {
		Employee employee = EmployeeService.getInstance().findTopic(id);
		model.addAttribute("employee", employee);

		return "chitietnhanvien";
	}

	@GetMapping("/edit/{id}")
	private String viewEditEmployee(@PathVariable String id, Model model) {
		Employee employee = EmployeeService.getInstance().findTopic(id);
		model.addAttribute("employee", employee);

		return "suanhanvien";
	}

	@PostMapping("/editComplete")
	private String editEmployee(Employee employee, Model model) {
		Employee oldEmployee = EmployeeService.getInstance().findTopic(employee.getId());
		EmployeeService.getInstance().editEmployee(oldEmployee, employee);

		return "redirect:/";
	}

	@PostMapping("/deleteEmployees")
	private String deleteEmployee(@RequestBody List<String> employeeIds) {
		employeeIds.forEach(e -> {
			EmployeeService.getInstance().removeEmployee(e);
		});

		return "dsnhanvien";
	}

	@GetMapping("/add")
	private String addEmployee(Model model) {
		return "themnhanvien";
	}

	@PostMapping("/addComplete")
	public String newEmployee(Employee employee, Model model) {
		EmployeeService.getInstance().addEmployee(employee);

		return "redirect:/";
	}
}
