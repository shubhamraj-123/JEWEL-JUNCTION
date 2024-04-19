<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%
String uname = (String) session.getAttribute("uname");
if (uname == null) {
    response.sendRedirect("admin.html");
}
else{
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String pimg = request.getParameter("pimg");
	int prate = Integer.parseInt(request.getParameter("prate"));

	try {
	    Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jeweljunction", "1234");

	    String qry = "update necklaces set pname=?,pimg=?,prate=? where pid=?";
	    PreparedStatement pstmt = con.prepareStatement(qry);
	   
	    pstmt.setString(1, pname);
	    pstmt.setString(2, pimg);
	    pstmt.setInt(3, prate);
	    pstmt.setString(4, pid);
	    int i = pstmt.executeUpdate();
	    if (i > 0) {
	        out.println("<script>alert('Item updated successfully.'); window.location='admindash.jsp';</script>");
	    } else {
	        out.println("<script>alert('Something went wrong.'); window.location='admindash.jsp';</script>");
	    }
	    
	    pstmt.close();
	    con.close();
	} catch (Exception e) {
	    out.print(e);
	}
}

%>
