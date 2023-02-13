<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@page import="com.yg.dao.MemberDAO"%>
    
 <%
 	String id = request.getParameter("id");
 	int pw = Integer.parseInt( request.getParameter("pw"));
 
 	MemberDAO mDAO = new MemberDAO();
 	if (mDAO.loginCheck(id,pw)){
 		//1.쿠키
 		//Cookie c= new Cookie("loginId",id);
 		//response.addCookie(c);
 		//2.세션
 		session.setAttribute("loginId",id);
 %>
 	<script>alert("로그인성공"); location.href="Ex10List.jsp";</script>
 <%
 	}else{
 		//로그인 실패시.
 %>
 		<script>alert("잘못된 아이디와 비밀번호 입니다.")</script>
 <% 		
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

</body>
</html>