<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style2.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Users</title>
</head>
<body>
<h2>List of all users from this group:</h2>
<table border="1">	
	<tr>
		<th>User ID</th>
		<th>Username</th>
	</tr>
	<c:forEach var="user" items="${users}">
	<tr>
		<td align="center">${user.id}</td>
		<td><a href="./user?id=${user.id}">${user.username}</a></td>
	</tr>
</c:forEach>
</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>