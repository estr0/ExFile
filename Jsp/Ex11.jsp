<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<script>
		$(function(){
			$("#input1").val(<%=(int)(Math.random()*9)+1 %>);
			$("#input2").val(<%=(int)(Math.random()*9)+1 %>);
		});
	</script>
</head>
<body>
	<form action="../Ex11Servlet">
		num1 : <input type="text" id="input1" name="num1"><br/>
		num2 : <input type="text" id="input2" name="num2"><br/>
		num3 : <input type="text" name="num3"><br/>
		<input type="submit" value="제출"/>
	</form>
</body>
</html>