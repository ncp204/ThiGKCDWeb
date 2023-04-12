<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>
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
    <body>

table {
	width: 100vw;
}
</style>
</head>

<body>

        <%--@elvariable id="user" type="com.example.Forum.model.User"--%>
        <h2 class="header">Chào ${user.username} | <a href="${pageContext.request.contextPath}/logout">Thoát</a> </h2>

	<h2>Chủ đề : ${topic.getTitle()}</h2>

	<table border="1">
		<tr>
			<th colspan="2"><fmt:formatDate type="both" dateStyle="short"
					timeStyle="short" value="${topic.getCreatedTime().time}" /></th>
		</tr>
		<tr>
			<th rowspan="2">${topic.getCreator().username}-Thamgia<fmt:formatDate
					type="both" dateStyle="short" timeStyle="short"
					value="${topic.getCreator().joinDate}" />
			</th>
			<th>${topic.title}-<a
				href="${pageContext.request.contextPath}/replyTopic/${topic.id}">Trả
					lời</a></th>
		</tr>
		<tr>
			<th>${topic.content}</th>
		</tr>
	</table>

	<c:forEach var="i" items="${topic.getMessages()}">
		<table border="1">
			<tr>
				<th colspan="2"><fmt:formatDate type="both" dateStyle="short"
						timeStyle="short" value="${i.getCreatedTime().time}" /></th>
			</tr>
			<tr>
				<th rowspan="2">${i.getCreator().getUsername()}-Thamgia<fmt:formatDate
						type="both" dateStyle="short" timeStyle="short"
						value="${i.getCreator().joinDate}" />
				</th>
				<th>${i.getTitle()}-<a
					href="${pageContext.request.contextPath}/replyTopic/${topic.id}">Trả
						lời</a></th>
			</tr>
			<tr>
				<th>${i.getContent()}</th>
			</tr>

		</table>
	</c:forEach>

	<a href="${pageContext.request.contextPath}/listTopics">Danh sách
		chủ đề</a>
</body>
</html>