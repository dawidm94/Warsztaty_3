<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="/WEB-INF/fragments/header.jsp" %>
<html>
<head>
<style><%@include file="/WEB-INF/css/style.css"%></style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Solution detail</title>
</head>
<body>
	<h2>Solution details:</h2>
	${solution.description}
</body>
</html>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>