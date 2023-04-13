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
			<h2>Thông tin đặt Tour</h2>
			<div>
			<b>${tour.getTitle()} </b>${tour.getDays()}
			</div>
			<h2>Thông tin khách hàng</h2>
			<div>
				Họ tên: ${customer.getName()}
			</div>
			<div>
				Địa chỉ: ${customer.getAddress()}
			</div>
			<div>
				E-mail: ${customer.getEmail()}
			</div>
			<div>
				Điện thoại: ${customer.getPhone()}
			</div>
			<h2>Thông tin chuyến đi</h2>
			<div>
				Ngày khởi hành: ${booking.getDepartuteDate()}
			</div>
			<div>
				Số người lớn: ${booking.getNoAdults()}
			</div>
			<div>
				Số trẻ em: ${booking.getNoChilrden()}
			</div>
			<div>
				<input type="button" value="Xác nhận" onclick="location.href='/listTours';">
			</div>
		</div>
	</div>
</body>
</html>