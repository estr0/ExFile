<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//[정리]
 	// request.getParmeter() 는 String 타입으로 리턴해.
 	// request.getAttribute() 는 object타입으로 리턴해. (따라서, 형 변환이 필요하다.)
 	String r = (String)(request.getAttribute("result"));// redirect이면 getparameter로 받아야한다.
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과는 <%=r%></h1>
	<a href = "Jsp/Ex11.jsp">다시 처음부터</a> <!-- Ex11에서  Servlet 웹앱 경로로 가기때문에 같은 폴더에 없다. -->
</body>
</html>