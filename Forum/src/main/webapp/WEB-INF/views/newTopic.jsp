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
	width: 100vw;
}
</style>
<link href="css/global.css" rel="stylesheet">
</head>
<h2 class="header">
	Chào ${user.username} | <a
		href="${pageContext.request.contextPath}/logout">Thoát</a>
</h2>


<form action="newTopic" method="post">
	<div>
		<label for="title">Tiêu đề</label> <input id="title" type="text"
			name="title" width="50%" required>
	</div>

	<div>
		<label>Nội dung</label>
		<textarea rows="5" cols="50" name="content" type="text" required></textarea>
	</div>

	<div>
		<button type="submit">Gửi</button>
	</div>
</form>

<form action="listTopics" method="get">
	<input type="submit" value="hủy bỏ">
</form>
</html>