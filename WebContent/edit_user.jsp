<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit user </title>
</head>
<body>
<h3>Edit user : </h3>
	 <form action="/Warsztaty_3/panel/users/edit" method="post">
 	Name:   <input type="text" name="userName" value="${user.username}">
 	Email:  <input type="text" name="userEmail" value="${user.email}">
 Password:  <input type="text" name="userPassword" value="${user.password}">
 			<select name="userGroupId">
 			<option value="" disabled selected>Select user group</option>
 				<c:forEach var="group" items="${userGroups}">
 					 <option value="${group.id}">${group.name}</option>
 				</c:forEach>
 			</select>
 			<input type="hidden" name="userId" value="${user.id}">
 			<input type="submit" value="edit"> 
	</form>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>