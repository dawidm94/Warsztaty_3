<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style3.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator Panel - Exercises</title>
</head>
<p>
<a href="/Warsztaty_3/panel/exercises/add"><button>Add new exercise</button></a>
</p>
<table border="1">
	<tr>
		<th>Exercise ID</th>
		<th>Title</th>
		<th>Description</th>
		<th></th>
	</tr>
	<c:forEach var="exercise" items="${exercises}">
	<tr>
		<td align="center">${exercise.id}</td>
		<td>${exercise.title}</td>
		<td width="250">${exercise.description}</td>		
		<td width="90"><a href="/Warsztaty_3/panel/exercises/edit?id=${exercise.id}"><button>Edit</button></a> 
			<a href="/Warsztaty_3/panel/exercises/delete?id=${exercise.id}"><button>Delete</button></a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>
