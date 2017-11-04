<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<html>
<head>
<style><%@include file="/WEB-INF/css/style2.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Groups</title>
</head>
<body>
<h2>List of all groups:</h2>
<table border="1">
	<tr>
		<th>Group ID</th>
		<th>Name</th>
	</tr>
	<c:forEach var="group" items="${groups}">
	<tr>
		<td align="center">${group.id}</td>
		<td><a href="./usersbygroupid?id=${group.id}">${group.name}</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>