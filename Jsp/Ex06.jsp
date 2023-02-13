<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a=0,b=0;
	try{
		a = Integer.parseInt(request.getParameter("a"));
		b = Integer.parseInt(request.getParameter("b"));
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
		<%
				int sum=0;

				for(int i=a; i<=b; i++){
					out.print(i);
					if(i<b) out.print("+");
					else out.print("=");
				}
				out.print(sum);
		%>
	</h1>
</body>
</html>