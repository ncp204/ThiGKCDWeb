<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style>
.header {
	font-size: initial;
	text-align: right;
}

body {
	margin: 0
}

table {
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

table thead tr {
	background: #cccccc;
}

.wrapper {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.text-align-center {
	text-align: center;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div style="width: 600px;">
			<h2>Các chương trình DU LỊCH</h2>
			<table class="table table-striped" border="1">
				<thead>
					<tr>
						<th>Chương trình</th>
						<th>Lịch khởi hành</th>
						<th>Giá</th>
						<th>Đặt</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="tour" items="${tours}">
					<tr>
						<td><a href="tourDetails/${tour.getId()}">${tour.getTitle()}</a> <br>
							<div>${tour.getDays()}</div>
						<td>
							<div>${tour.getDepartureSchedule()}</div>
						</td>
						<td>
							<div>${tour.getPrice()}</div>
						</td>
						<td class="text-align-center"><input type="button"
							onclick="location.href='/bookingTour/${tour.getId()}';" value="Đặt tour"></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>