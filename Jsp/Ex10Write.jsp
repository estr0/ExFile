<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yg.dao.BoardDAO"%>

<%
	BoardDAO bDao = new BoardDAO(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기페이지</title>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="Ex10WriteAction.jsp" method="post">
		게시글번호: <%=bDao.getNextBno() %><br/>
		작성자: <input type='text' name='writer'><br/>
		제목: <input type='text' name='title'><br/>
		내용: <input type='text' name='content'><br/>
		<input type='submit' value='작성완료'> 
	</form>
</body>
</html>
