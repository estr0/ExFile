<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yg.dao.BoardDAO"%>
<%@ page import="com.yg.dto.BoardDetailDTO"%>
<%
	int bno = 0;
	try{
		bno = Integer.parseInt( request.getParameter("bno") );
	}catch(NumberFormatException e){ 
		System.out.println("잘못된 접근 bno : " + bno);
	}
	
	BoardDAO bDao = new BoardDAO();
	BoardDetailDTO dto = bDao.getBoardDetailByBno(bno);
%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
</head>
<body>
	<table>
		<tr>
			<th>글번호</th>
			<td><%=dto.getBno() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getTitle() %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%=dto.getContent() %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dto.getName() %>(<%=dto.getWriter() %>)</td>
		</tr>
		<tr>
			<th>작성일시</th>
			<td><%=dto.getWritedate() %></td>
		</tr>
	</table>
	<br/><a href = "Ex10List.jsp"><div>목록으로</div></a>
</body>
</html>