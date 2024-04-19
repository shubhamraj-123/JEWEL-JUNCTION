<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
String uname = (String) session.getAttribute("uname");
if (uname == null) {
    response.sendRedirect("admin.html");
}
else{
	String pid = request.getParameter("pid");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jeweljunction", "1234");

	    String qry = "select * from rings where pid='"+pid+"'";
	    Statement smt=con.createStatement();
	    ResultSet rs=smt.executeQuery(qry);
	    if(rs.next()){
	    	%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <form method="post" action="updaterings.jsp">
      <label for="pid">Product Id:</label>
      <input type="text" name="pid" id="pid" value="<%= rs.getString("pid")%>" readonly />

      <label for="pname">Product Name:</label>
      <input type="text" name="pname" id="pname" value="<%= rs.getString("pname")%>" />

      <label for="pimg">Product Image Source:</label>
      <input type="text" name="pimg" id="pimg" value="<%= rs.getString("pimg")%>" />

      <label for="prate">Product Price:</label>
      <input type="number" name="prate" id="prate" value="<%= rs.getString("prate")%>" />

      <button type="submit">Update</button>
    </form>
  </body>
</html>
	    	<%
	    }else{
	    	out.println();
	    }
	}
	catch (Exception e) {
	    out.print(e);
	}
}
%>
