<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="admindash.css">
 <link rel="icon" href="logo.jpeg" />
<style type="text/css">
button:hover {
	background-color: #D8BFD8;
	color: black;
}
#tbl{
	text-align: center;
}
.atbl{
    border: 1px solid black;
    padding: 10px;
    border-collapse: collapse;
    margin: 10px auto;
    width: 70%;
}
th,td{
	border: 1px solid black;
    padding: 10px;
}
</style>
</head>
<body>
    <header>
        <h1>Admin Dashboard</h1>
    </header>

    <section>
        <div style="text-align: center;">
        		 <a href="updatenecklaces.html" style="text-decoration: none">
                <button>Update Necklaces</button>
            </a>
        	
        	 <a href="updaterings.html" style="text-decoration: none">
                <button>Update Rings</button>
            </a>
        	 <a href="deletenecklaces.html" style="text-decoration: none">
                <button>Delete Necklaces</button>
            </a>
        	 <a href="deleterings.html" style="text-decoration: none">
                <button>Delete Rings</button>
            </a>
        	
       		 <a href="addnecklaces.html" style="text-decoration: none">
                <button>Add Necklaces</button>
            </a>
        	<a href="addrings.html" style="text-decoration: none">
                <button>Add Rings</button>
            </a>
        	<a href="admindash.jsp" style="text-decoration: none">
                <button>Dashboard</button>
            </a>
            <a href="logout.jsp" style="text-decoration: none">
                <button id="hb">Log out</button>
            </a>
        </div>

        <div>
            <%
        String uname = (String) session.getAttribute("uname");
        if (uname == null) {
            response.sendRedirect("admin.html");
        }
        try{
        	Class.forName("oracle.jdbc.driver.OracleDriver");
        	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jeweljunction", "1234");
        	
        	String qry1 = "select * from rings";
        	Statement smt = con.createStatement();
        	ResultSet rs1 = smt.executeQuery(qry1);
    %>
    
    <h1>Welcome, <%= uname %></h1>
        </div>
        <div id="tbl">
        	<h2>Ring Details</h2>
            <table class="atbl">
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                </tr>
<%while (rs1.next()){%>
                <tr>
                    <td><%= rs1.getString("pid") %></td>
                    <td><%= rs1.getString("pname") %></td>
                    <td><%= rs1.getString("prate") %></td>
                </tr><%} %>
            </table>
        </div><%
        String qry2 = "select * from necklaces";
    	ResultSet rs2 = smt.executeQuery(qry2);
        %>
        <div id="tbl">
        	<h2>Necklaces Details</h2>
            <table class="atbl">
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                </tr>
<%while (rs2.next()){%>
                <tr>
                    <td><%= rs2.getString("pid") %></td>
                    <td><%= rs2.getString("pname") %></td>
                    <td><%= rs2.getString("prate") %></td>
                </tr><%} %>
            </table>
        </div>
        
    </section>

    <footer>
        Copyright &copy; 2023 Jewel Junction. | All rights reserved.
    </footer>
</body>
</html>
<%
rs1.close();
rs2.close();
smt.close();
con.close();
}catch(Exception e){
	out.print(e);
}
%>