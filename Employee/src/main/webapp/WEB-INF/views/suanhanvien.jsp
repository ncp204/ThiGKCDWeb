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
	<form action="/editComplete" method="post">
		<h1>Sửa nhân viên</h1>
		<br /> <strong><sup>*</sup>Mã nhân viên:</strong> <input name="id"
			value="${employee.getId() }" /> <br /> <strong><sup>*</sup>Họ
			tên:</strong> <input name="name" value="${employee.getName() }" /> <br /> <strong>Nữ:</strong>
		<span> <input ${employee.isMale() ? "checked" : "" }
			id='testName' type='checkbox' value='true' name='male'> <input
			id='testNameHidden' type='hidden' value='false' name='male'>
		</span> <br /> <strong><sup>*</sup>Ngày sinh:</strong> <input
			name="birthday" value="${employee.getBirthday().toLocaleString() }" /><span>dd/mm/yyyy</span>
		<br /> <strong><sup>*</sup>Địa chỉ:</strong> <input name="address"
			value="${ employee.getAddress()}" /> <br /> <strong>Số ĐT:</strong>
		<input value="${employee.getPhone() }" name="phone" value="" /> <br />
		<strong>Phòng ban:</strong> <select name="department" id="department">
			<option value="SX"
				${employee.getDepartment() == "SX" ? "selected" : "" }>SX</option>
			<option value="KT"
				${employee.getDepartment() == "KT" ? "selected" : "" }>KT</option>
			<option value="KHTV"
				${employee.getDepartment() == "KHTV" ? "selected" : "" }>KHTV</option>
			<option value="BGĐ"
				${employee.getDepartment() == "BGĐ" ? "selected" : "" }>BGĐ</option>
		</select> <br /> <strong>Chức vụ:</strong> <select name="title" id="title">
			<option value="GĐ" ${employee.getTitle() == "GĐ" ? "selected" : "" }>GĐ</option>
			<option value="PGĐ"
				${employee.getTitle() == "PGĐ" ? "selected" : "" }>PGĐ</option>
			<option value="TP" ${employee.getTitle() == "TP" ? "selected" : "" }>TP</option>
			<option value="PP" ${employee.getTitle() == "PP" ? "selected" : "" }>PP</option>
			<option value="NV" ${employee.getTitle() == "NV" ? "selected" : "" }>NV</option>
		</select> <br /> <strong>Lương căn bản:</strong> <input type="number"
			value=${employee.getWageRate() } name="wageRate" /> <br />
		<button type="submit">Cập nhật</button>
	</form>
	<button type="button" onclick="location.href='/'">Hủy bỏ</button>
	<script type="text/javascript">
	form.addEventListener('submit', () => {
	    if(document.getElementById("testName").checked) {
	        document.getElementById('testNameHidden').disabled = true;
	    }
	}
	</script>
</body>
</html>