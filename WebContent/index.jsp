<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" type="text/css">
<title>Home page</title>
</head>
<body>
	<h2>Last updated solutions:</h2>
	<table>
	<tr>
		<th>Title</th>
		<th>Updated</th>
		<th>User name</th>	
		<th></th>
	</tr>
	<c:forEach var="solution" items="${list}">
		<tr>
		<td>${solution.exerciseTitle}</td>
		<td>${solution.updated}</td>
		<td>${solution.username}</td>
		<td><a href="./solutiondetails?id=${solution.id}">Details</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>