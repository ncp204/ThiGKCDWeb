<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<header>
    <title>Welcome</title>
    <link href="css/login.css"
          rel="stylesheet">
</header>
<div class="login-box">
    <h2>Login</h2>

    <%--@elvariable id="user" type="com.example.Forum.model.User"--%>
    <form:form action="login" method="post" modelAttribute="user">
        <div>
            <form:label path="username">Username:</form:label>
            <form:input path="username" />
            <form:errors path="username" cssClass="error" />
        </div>

        <div>
            <form:label path="password">Password:</form:label>
            <form:password path="password"/>
            <form:errors path="password" cssClass="error" />
        </div>

        <div>
            <div></div>
            <div>
                <form:button>Register</form:button>
            </div>
            <div></div>
        </div>
    </form:form>
</div>
</html>