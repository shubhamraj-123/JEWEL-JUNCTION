<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="logouts()">
	<%
        session.invalidate();
        response.sendRedirect("index.html");
    %>
	<script>
	function logouts(){
		window.alert("Logout successful!");
	}
		
	</script>
</body>
</html>