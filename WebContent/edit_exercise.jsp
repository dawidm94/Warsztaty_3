<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit exercise</title>
</head>
<body>
<h3>Edit exercise : </h3>
	 <form action="/Warsztaty_3/panel/exercises/edit" method="post">
 	Title:    <input type="text" name="title" value="${exercise.title}">
Description:  <input type="text" name="description" value="${exercise.description}">
 			  <input type="hidden" name="exerciseId" value="${exercise.id}">
 			  <input type="submit" value="edit"> 
	</form>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>