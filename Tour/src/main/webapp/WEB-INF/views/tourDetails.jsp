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
			<h2>${tour.getTitle()}</h2>
			<div>
				<b>Số ngày: </b>${tour.getDays()}. <b>Phương tiện: </b>${tour.getTransportation()}. <b>Lịch khởi hành: </b>${tour.getDepartureSchedule()}
			</div>
			<h2>Chương trình chi tiết:</h2>
			<div style="word-wrap: break-word;">
				${tour.getDescription()}
			</div>
			<div style="display: flex; justify-content: space-between; padding-top: 10px;">
				<input type="button" onclick="location.href='/bookingTour/${tour.getId()}';"
					value="Đặt tour">
				<a href="/listTours">CHƯƠNG TRÌNH TOUR</a>
			</div>
		</div>
	</div>
</body>
</html>