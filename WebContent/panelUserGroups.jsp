<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style3.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator Panel - User Groups</title>
</head>
<body>
<p>
<a href="/Warsztaty_3/add_usergroup.jsp"><button>Add new user group</button></a>
</p>
<table border="1">
	<tr>
		<th>Group ID</th>
		<th>Name</th>
		<th></th>
	</tr>
	<c:forEach var="group" items="${groups}">
	<tr>
		<td align="center">${group.id}</td>
		<td>${group.name}</td>
		<td width="90"><a href="/Warsztaty_3/panel/usergroups/edit?id=${group.id}"><button>Edit</button></a> 
			<a href="/Warsztaty_3/panel/usergroups/delete?id=${group.id}"><button>Delete</button></a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>
