<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int n = Integer.parseInt(request.getParameter("num"));
	String strNum = request.getParameter("num");
	int dan = 0;
	if(strNum == null){
		System.out.println("is null");
	} else{
		dan = Integer.parseInt(strNum);
	}
%>
<%-- <%
	int n2 = 0;
	for( int i=1; i<=10; i++){
		n2=i;
	} 

	String tr = "<tr>";
	String trlast = "</tr>";
	String td = "<td>";
	String tdlast = "</td>";
	String table = "";
%> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		table{
			border-collapse:collapse;
		}
		td{
			padding:8px;
			border: 1px solid grey;
		}
	</style>
</head>
<body>
	<h1>구구단 <%=n %>단 출력</h1>
	<table>
<%-- 		<%
			for(int i=1; i<=9; i++){
				table = (tr + td + n + tdlast + td + "*" + tdlast + td + i + tdlast + td + (n*i) + tdlast + trlast);
				out.println(table);
			}
		%> --%>
		<%
			for(int i=1; i<=9; i++){
		%>
			<tr>
				<td><%=n %></td>
				<td>*</td>
				<td><%=i %></td>
				<td>=</td>
				<td><%=n*i %></td>
				
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>