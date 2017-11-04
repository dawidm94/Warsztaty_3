<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrator panel</title>
</head>
<body>
<h2>Administrator panel</h2>
<h4><a href="./panel/exercises">Exercises</a></h4>
<h4><a href="./panel/usergroups">User groups</a></h4>
<h4><a href="./panel/users">Users</a></h4>
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>