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

.input-form {
	display: flex;
	margin: 5px 0;
}

.input-form label {
	width: 200px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div style="width: 600px;">
			<h2>Đặt tour: NHA TRANG 2 NGÀY 1 ĐÊM</h2>
			<form>
				<div style="font-weight: bold;">Thông tin khách hàng</div>
				<div class="input-form">
					<label>Họ tên:(*)</label> 
					<input id="fullName" name="fullName" type="text" required="required" />
				</div>
				<div class="input-form">
					<label>Địa chỉ</label> 
					<input id="address" name="address" type="text"/>
				</div>
				<div class="input-form">
					<label>Email:(*)</label> 
					<input name="fullName" type="text" required="required"/>
				</div>
				<div class="input-form">
					<label>Điện thoại</label> <input name="phone" type="text" />
				</div>
				<br />
				<div style="font-weight: bold;">Thông tin chuyến đi</div>
				<div class="input-form">
					<label>Ngày khởi hành(*)</label> <input name="date" type="datetime"
						pattern="dd/mm/yyy" required="required" />
				</div>
				<div class="input-form">
					<label>Số người lớn:(*)</label> <input name="adult" type="number"
						required="required" />
				</div>
				<div class="input-form">
					<label>Số trẻ em</label> <input name="childrens" type="number" />
				</div>
				<div style="padding-left: 250px;">
					<input type="button" onclick="location.href='/bookingTour';"
					value="Gởi">
					<input type="button" onclick="location.href='/listTours';"
					value="Hủy">
				</div>
			</form>
		</div>
	</div>
</body>
</html>