<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int n = Integer.parseInt(request.getParameter("num"));
	char result = n%2==0? '짝' : '홀';
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1> <%=n %>는 <%=result %>수임!</h1>
</body>
</html>