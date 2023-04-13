<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Chi tiết nhân viên</h1>
	<br />
	<strong>Mã nhân viên:</strong>
	<span>${employee.getId()}</span>
	<br />
	<strong>Họ tên:</strong>
	<span>${employee.getName()}</span>
	<br />
	<strong>Nữ:</strong>
	<span><input type="checkbox"
		${employee.isMale() ? "checked" : ""} /></span>
	<br />
	<strong>Ngày sinh:</strong>
	<span>${employee.getBirthday().toLocaleString()}</span>
	<br />
	<strong>Địa chỉ:</strong>
	<span>${employee.getAddress()}</span>
	<br />
	<strong>Số ĐT:</strong>
	<span>${employee.getPhone()}</span>
	<br />
	<strong>Phòng ban:</strong>
	<span>${employee.getDepartment()}</span>
	<br />
	<strong>Chức vụ:</strong>
	<span>${employee.getTitle()}</span>
	<br />
	<strong>Lương căn bản:</strong>
	<span>${employee.getWageRate()}</span>
	<br />
	<button onclick="location.href='/'">Danh sách nhân viên</button>
	<button onclick="location.href='/edit/${employee.getId()}'">Sửa</button>
</body>
</html>