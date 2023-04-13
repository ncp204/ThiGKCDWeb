<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<div>
		Tổng số nhân viên: <span id="size">${listEmployee.size()}</span>
	</div>
	<button onclick="location.href='/add'">Thêm nhân viên</button>
	<button onclick="deleteEmployees()">Xóa</button>
	<table>
		<thead>
			<tr>
				<th>Sửa</th>
				<th>Chọn</th>
				<th>Mã NV</th>
				<th>Họ tên</th>
				<th>Ngày sinh</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="i" items="${listEmployee}">
				<tr class="${i.getId()}">
					<td><button onclick="location.href='/edit/${i.getId()}'"
							type="button">Sửa</button></td>
					<td><input class="checkBox" type="checkbox" name="employeeId"
						value="${i.getId()}"></td>
					<td><a href="detail/${i.getId()}">${i.getId()}</a></td>
					<td>${i.getName()}</td>
					<td>${i.getBirthday().toLocaleString()}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script type="text/javascript">
		function deleteEmployees() {
			var employeeIds = [];
			$('input[name="employeeId"]:checked').each(function() {
				employeeIds.push($(this).val());
			});
			if (employeeIds.length > 0) {
				$.ajax({
					type : "POST",
					url : "/deleteEmployees",
					data : JSON.stringify(employeeIds),
					contentType : "application/json; charset=utf-8",
					success : function(data) {
						$("#size").text(
								Number($("#size").text()) - employeeIds.length)
						employeeIds.forEach(function(item) {
							let itemSelect = "tr." + item
							$(itemSelect).remove();
						});

						// do something
					},
					error : function(jqXHR, textStatus, errorThrown) {
						// do something
					}
				});
			}
		}
	</script>
</body>
</html>