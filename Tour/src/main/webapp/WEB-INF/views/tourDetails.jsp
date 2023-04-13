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
			<h2>Chương trình chi tiết:</h2>
			<div style="font-weight: bold;">Ngày 01(Thứ bảy): PHỐ BIỂN NHA
				TRANG</div>
			<div style="word-wrap: break-word;">
				aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
				aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
				aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
				aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
				aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
			</div>
			<div style="display: flex; justify-content: space-between;">
				<input type="button" onclick="location.href='/bookingTour';"
					value="Đặt tour">
				<a href="listTours">CHƯƠNG TRÌNH TOUR</a>
			</div>
		</div>
	</div>
</body>
</html>