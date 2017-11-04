<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new user group</title>
</head>
<body>
<h3>Add new user group</h3>
 <form action="/Warsztaty_3/panel/usergroups" method="post">
 	<input type="text" name="groupName" placeholder="Group name">
 	<input type="submit" value="add"> 
 </form>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>