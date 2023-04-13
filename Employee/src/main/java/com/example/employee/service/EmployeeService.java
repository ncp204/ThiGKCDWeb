package com.example.employee.service;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.example.employee.model.Employee;

public class EmployeeService {
	private static final EmployeeService instance = new EmployeeService();
	private Map<String, Employee> listEmployee;

	public EmployeeService() {
		init();
	}

	private void init() {
		Employee employee1 = new Employee("A001", "Trần Văn Trà", false, new Date(1954, 11, 11), "8 Nguyễn Gia",
				"8765456", "BGĐ", "GĐ", 1000000);
		Employee employee2 = new Employee("A002", "Nguyễn Thị Mỹ Dung", true, new Date(1953, 12, 13), "8 Nguyễn Gia",
				"8765456", "BGĐ", "GĐ", 1000000);
		Employee employee3 = new Employee("A003", "Trần Quyết Thắng", false, new Date(1960, 04, 12), "8 Nguyễn Gia",
				"8765456", "BGĐ", "GĐ", 1000000);
		Employee employee4 = new Employee("A004", "Phạm Hùng", false, new Date(1970, 07, 07), "8 Nguyễn Gia", "8765456",
				"BGĐ", "GĐ", 1000000);

		listEmployee = new HashMap<String, Employee>();

		listEmployee.put("A001", employee1);
		listEmployee.put("A002", employee2);
		listEmployee.put("A003", employee3);
		listEmployee.put("A004", employee4);
	}

	public Collection<Employee> getEmployees() {
		return listEmployee.values();
	}

	public Employee findTopic(String id) {
		return listEmployee.get(id);
	}

	public static EmployeeService getInstance() {
		return instance;
	}

	public void addEmployee(Employee employee) {
		employee.setId(employee.getId());

		listEmployee.put(employee.getId(), employee);
	}

	public void editEmployee(Employee old, Employee newE) {
		listEmployee.replace(old.getId(), old, newE);
	}

	public void removeEmployee(String id) {
		listEmployee.remove(id);
	}
}
