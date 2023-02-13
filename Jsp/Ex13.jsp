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
			$("#btn1").click(function(){
				$.ajax({
					type: "post",
					data: {"num":55},
					datatype: "json",
					url: "../AjaxTestServlet",
					success: function(d){
						alert(d.result);
					},
					error: function(request,status,error){
						//alert("에러");
						alert("code"+request.status+"\n"+"message"+request.responseText+"\n"+"error:"+error);
						
					}
				});
			});
				
		});
	</script>
</head>
<body>
	<button id = "btn1">버튼!</button>
	<form action="../AjaxTestServlet.java">
		 
	</form>
</body>
</html>