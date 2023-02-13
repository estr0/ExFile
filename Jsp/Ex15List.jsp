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
				$.ajax({
					type: "get",
					url: "../Ex15Servlet",
					data: {"bno":bno}, // "이름":값
					datatype: "json",
					success: function(data){
						//alert("서버로부터 받은 데이터 data.resilt="+data.result);
						$(".bno").each(function(index,item){
							//console.log( $(item).text() )
							if( $(item).text()==bno ){
								var t = $(item).parent().find(".title").text();
								$(item).parent().find(".title").text(t+"!");
							}
							
						});
					},
					error: function(request,status,error){
						alert("code"+request.status+"\n"+"message"+request.responseText+"\n"+"error:"+error);
					}
				});
				
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
			<td class="title"><%=board.getTitle()%></td>
			<td><%=board.getContent()%></td>
			<td><%=board.getWritedate() %></td>
		</tr>
	<%
		}
	%>	
	</table>
 	<a href="Ex10Write.jsp"><button type="submit"> 글쓰기 </button></a>
	
</body>
</html>
