<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style4.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Are you sure you want to delete "${userGroup.name}" ? </h2>
<table>
<tr>
<td>
<form action="/Warsztaty_3/panel/usergroups/delete" method="post">
 	<input type="hidden" name="groupId" value="${userGroup.id}">
	<input type="submit" value="Yes">
</form>
</td>
<td>
<form action="/Warsztaty_3/panel/usergroups">
	<input type="submit" value="No">
</form>
</td>
</tr>
</table>
</body>
</html>