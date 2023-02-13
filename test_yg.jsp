<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginEmail = (String)session.getAttribute("loginEmail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>plate_id : <%=request.getParameter("detailPk") %></h1>
	<h1>writer : <%=loginEmail %></h1>
	<h1><%=request.getParameter("review") %></h1>
	<h1><%=request.getParameter("tastylike") %></h1>
	<h1><%=request.getParameter("img_names") %></h1>
</body>
</html>