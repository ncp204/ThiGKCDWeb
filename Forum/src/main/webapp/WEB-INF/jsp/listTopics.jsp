<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%--<!-- the ResourceBundleViewResolver -->--%>
<%--<bean id="viewResolver" class="org.springframework.web.servlet.view.ResourceBundleViewResolver">--%>
<%--    <property name="user"/>--%>
<%--</bean>--%>
<html>
    <head>
        <style>
            .header {
                font-size: initial;
                text-align: right;
            }
        </style>
    </head>

    <%--@elvariable id="user" type="com.example.Forum.model.User"--%>
    <h2 class="header">Chào ${user.username} | <a href="${pageContext.request.contextPath}/login">Thoát</a> </h2>

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
            </tr>
                <td><a href="showTopic/${i.id}">${i.getTitle()}</a>
                    <fmt:formatDate type = "both"
                             dateStyle = "short" timeStyle = "short" value = "${i.getCreatedTime().time}" />
                </td>
                <td>${i.getMessages().size()}</td>
            </tr>
        </c:forEach>

<%--                <tr>--%>
<%--                    <td> <a href="showTopic/1">${topic1.getTitle()}</a></td>--%>
<%--                    <td>${topic1.getMessages().size()}</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>${topic2.getTitle()}</td>--%>
<%--                    <td>${topic2.getMessages().size()}</td>--%>
<%--                </tr><tr>--%>
<%--                    <td>${topic3.getTitle()}</td>--%>
<%--                    <td>${topic3.getMessages().size()}</td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>${topic4.getTitle()}</td>--%>
<%--                    <td>${topic4.getMessages().size()}</td>--%>
<%--                </tr>--%>
        </tbody>
    </table>
</html>