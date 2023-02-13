<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
	//데클러레이션
	public Connection getConnetction(){
		Connection conn = null;

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbID = "hr";
		String dbPW = "hr";
		
		try{
			Class.forName(driver);
			System.out.println("<h1>JDBC 드라이버 로딩 성공 </h1>");
			conn = DriverManager.getConnection(url,dbID,dbPW);
			System.out.println("<h1>Oracle 접속 성공</h1>");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("오라클 접속 실패");
		}
		return conn;
	}
	
 %>
<% 
	Connection conn = getConnetction();

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>employees 테이블 출력 연습</title>
	<style>
		table{
			border-collapse:collapse;
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
			<td>사원번호</td>
			<td>이름</td>
			<td>성</td>
			<td>월급</td>
		</tr>
<%
	String sql = "SELECT * FROM employees";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		int employee_Id = rs.getInt("employee_id");
		String first_Name = rs.getString("first_name");
		String last_Name = rs.getString("last_name");
		int salary = rs.getInt("salary");
		out.println("<tr>");
		out.println("<td>"+employee_Id+"</td>");
		out.println("<td>"+first_Name+"</td>");
		out.println("<td>"+last_Name+"</td>");
		out.println("<td>"+salary+"</td>");
		out.println("</tr>");
		
	}
	
	rs.close();
	pstmt.close();
%>
	</table>
</body>
</html>
<%
	conn.close();
%>