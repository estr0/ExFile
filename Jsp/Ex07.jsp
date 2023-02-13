<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%
	int a = 0;
	int b = 0;
		a = (int)(Math.random()*10)+1;
		b = (int)(Math.random()*10)+1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex07p2.jsp">
		숫자1 : <input name="a" value="<%=a %>" readonly><br/>
		숫자2 : <input name="b" value="<%=b %>" readonly><br/>
		답 : <input type="text" name="result"><br/>
		<input type="submit" value="정답확인">
	</form>
</body>
</html>