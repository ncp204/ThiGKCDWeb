<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<header>
	<style>
.header {
	font-size: initial;
	text-align: right;
}

body {
	margin: 0
}

table {
	width: 100vw;
}
</style>
	<title>Welcome</title>
	<link href="css/login.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
</header>
<body>
	<div class="wrap">
		<div class="login-box">
			<h1 class="title">Đăng nhập</h1>
			<%--@elvariable id="user" type="com.example.Forum.model.User"--%>
			<div class="login-form">
				<form:form id="form" action="login" method="post"
					modelAttribute="user">
					<div class="form-item">
						<form:label path="username">Tên đăng nhập:</form:label>
						<form:input path="username" />
						<form:errors path="username" cssClass="error" />
					</div>
					<div class="form-item">
						<form:label path="password">Mật khẩu:</form:label>
						<form:password path="password" />
						<form:errors path="password" cssClass="error" />
					</div>
					<form:button class="btn-login">Đăng nhập</form:button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>