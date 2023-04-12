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
	width: 100vw;
}
</style>
<link href="css/global.css" rel="stylesheet">
</head>
<body>

	<%--@elvariable id="user" type="com.example.Forum.model.User"--%>
	<h2 class="header">
		Chào ${user.username} | <a
			href="${pageContext.request.contextPath}/logout">Thoát</a>
	</h2>


	<h2>Diễn đàn : Chuyện học phí và các chính sách hỗ trợ học tập</h2>

	<c:if test="${!user.username.isEmpty()}">
		<form action="newTopic" method="get">
			<input type="submit" value="Gởi bài mới">
		</form>
	</c:if>


	<table class="table table-striped" border="1">
		<thead>
			<tr>
				<th style="width: 85%;">Chủ đề</th>
				<th>Hồi âm</th>
			</tr>
		</thead>
		<tbody>
			<%--@elvariable id="topics" type="java.util.Collection"--%>
			<c:forEach var="i" items="${topics}">
				<tr>
					<td><a href="showTopic/${i.id}">${i.getTitle()}</a> <fmt:formatDate
							type="both" dateStyle="short" timeStyle="short"
							value="${i.getCreatedTime().time}" /></td>
					<td>${i.getMessages().size()}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>