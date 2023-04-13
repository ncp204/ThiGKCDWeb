<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addComplete" method="post">
		<h1>Thêm nhân viên</h1>
		<br /> <strong><sup>*</sup>Mã nhân viên:</strong> <input name="id" />
		<br /> <strong><sup>*</sup>Họ tên:</strong> <input name="name"
			placeholder="Họ tên" /> <br /> <strong>Nữ:</strong> <span> <input
			id='testName' type='checkbox' value='true' name='male'> <input
			id='testNameHidden' type='hidden' value='false' name='male'></span>
		<br /> <strong><sup>*</sup>Ngày sinh:</strong> <input name="birthday" /><span>dd/mm/yyyy</span>
		<br /> <strong><sup>*</sup>Địa chỉ:</strong> <input name="address" />
		<br /> <strong>Số ĐT:</strong> <input name="phone" value="" /> <br />
		<strong>Phòng ban:</strong> <select name="department" id="department">
			<option value="SX">SX</option>
			<option value="KT">KT</option>
			<option value="KHTV">KHTV</option>
			<option value="BGĐ">BGĐ</option>
		</select> <br /> <strong>Chức vụ:</strong> <select name="title" id="title">
			<option value="GĐ">GĐ</option>
			<option value="PGĐ">PGĐ</option>
			<option value="TP">TP</option>
			<option value="PP">PP</option>
			<option value="NV">NV</option>
		</select> <br /> <strong>Lương căn bản:</strong> <input type="number" value=0
			name="wageRate" /> <br />
		<button type="submit">Lưu</button>
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