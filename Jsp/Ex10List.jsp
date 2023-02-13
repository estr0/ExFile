<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>    
<%@ page import="com.yg.dto.*" %>    
<%@ page import="com.yg.dao.*" %>

<%
	String loginId = ""; //(String)session.getAttribute("loginId");
%>
<%
	BoardDAO bDAO = new BoardDAO();
	ArrayList<BoardDTO> listB = bDAO.getAllBoardList(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 게시글 출력</title>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<style>
		table{
			border-collapse:collapse;
			table-layout:fixed;			
			margin: 0 auto;
		}
		td, th{
			padding:8px;
			border: 1px solid grey;
			text-align:center;
		}
	</style>
	<script>
		$(function(){
			$("table tr").click(function(){
				var bno = $(this).find("td.bno").text();
				//alert("bno : "+ bno);
				location.href = "Ex10detail.jsp?bno="+bno;
			});
		});
	</script>
</head>
<body>
	<h1><%=loginId %>로 로그인 되었습니다.</h1>
	<table>
	<%
		//BoardDTO 객체를 선언할수있는 객체
		for(BoardDTO board : listB){
	%>
		<tr>
			<td class="bno"><%=board.getBno()%></td>
			<td><%=board.getWriter()%></td>
			<td><%=board.getTitle()%></td>
			<td><%=board.getContent()%></td>
			<td><%=board.getWritedate() %></td>
		</tr>
	<%
		}
	%>	
	</table>
 	<a href="Ex10Write.jsp"><button type="submit"> 글쓰기 </button></a>
<%-- <% 
	if(pageNumber > 1){
%>
		<a href="Ex10List.jsp?page=<%=pageNumber-1%>"><button id="prev">이전페이지</button></a>
<%
	}
%> 
	<a href="Ex10List.jsp?page=<%=pageNumber+1%>"><button id="next">다음페이지</button></a>
--%>
	
</body>
</html>
