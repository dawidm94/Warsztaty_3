<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit user group</title>
</head>
<body>
<h3>Edit user group: </h3>
 <form action="/Warsztaty_3/panel/usergroups/edit" method="post">
 	Name: <input type="text" name="groupName" value="${userGroup.name}">
 	<input type="hidden" name="groupId" value="${userGroup.id}">
 	<input type="submit" value="edit"> 
 </form>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>