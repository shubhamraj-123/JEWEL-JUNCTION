<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try {
		    Class.forName("oracle.jdbc.driver.OracleDriver");
		    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jeweljunction", "1234");

		    String qry = "SELECT * FROM ADMIN WHERE USERNAME=? AND PASSWORD=?";
		    PreparedStatement pstmt = con.prepareStatement(qry);
		    pstmt.setString(1, username);
		    pstmt.setString(2, password);
		    ResultSet rs= pstmt.executeQuery();
		    if (rs.next()) {
		        out.println("<script>alert('Logib successfull.'); window.location='admindash.jsp';</script>");
		    } else {
		        out.println("<script>alert('Login Failed'); window.location='admin.html';</script>");
		    }
		    
		    pstmt.close();
		    con.close();
		} catch (Exception e) {
		    out.print(e);
		}
		if((username.equals("admin")&&password.equals("admin"))){
			session.setAttribute("uname", username);
			response.sendRedirect("admindash.jsp");
		}
		else{
			out.println("<script>alert('Invalid Credentials, try again.'); window.location='admin.html';</script>");
		}
	%>
</body>
</html>