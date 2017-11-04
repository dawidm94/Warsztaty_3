<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User details</title>
</head>
<body>
<h2>Details of user "${user.username}"</h2>
<h4>Id: ${user.id}</h4>
<h4>Username: ${user.username}</h4>
<h4>Email: ${user.email}</h4>
<hr>
<h2>${user.username} solutions:</h2>
	<table border="1">
	<tr>
		<th>Solution ID</th>
		<th>Title</th>
		<th>Created</th>
		<th>Updated</th>
		<th>Exercises_id</th>	
		<th></th>
	</tr>
	<c:forEach var="solution" items="${list}">
		<tr>
		<td>${solution.id}</td>
		<td>${solution.exerciseTitle}</td>
		<td>${solution.created}</td>
		<td>${solution.updated}</td>
		<td>${solution.exercises_id}</td>
		<td><a href="./solutiondetails?id=${solution.id}">Details</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>