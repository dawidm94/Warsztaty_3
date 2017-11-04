<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style3.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator Panel - Users</title>
</head>
<p>
<a href="/Warsztaty_3/panel/users/add"><button>Add new user</button></a>
</p>
<table border="1">
	<tr>
		<th>User ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>User Group ID</th>
		<th></th>
	</tr>
	<c:forEach var="user" items="${users}">
	<tr>
		<td align="center">${user.id}</td>
		<td>${user.username}</td>
		<td>${user.email}</td>		
		<td>${user.personGroupId}</td>	
		<td><a href="/Warsztaty_3/panel/users/edit?id=${user.id}"><button>Edit</button></a> 
			<a href="/Warsztaty_3/panel/users/delete?id=${user.id}"><button>Delete</button></a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>
