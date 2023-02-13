<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a=0,b=0,result=0;
	try{
		a = Integer.parseInt(request.getParameter("a"));
		b = Integer.parseInt(request.getParameter("b"));
		result = Integer.parseInt(request.getParameter("result"));
	} catch(NumberFormatException e) { e.printStackTrace(); }
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>
		a=<%=a %>
		b=<%=b %>
		<%
			if(a+b==result){
				out.print("<h1>정답</h1>");
			}else if(a+b!=result){
				out.print("<h1>정답아님!</h1>");
			}
		%>
	</h1>
</body>
</html>