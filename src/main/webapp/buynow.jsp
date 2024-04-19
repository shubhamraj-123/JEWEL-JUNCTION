<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    
    String pid = request.getParameter("pid");
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver"); Connection con =
    	DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jeweljunction","1234"); 
    	String qry = "select * from rings where pid = '"+pid+"'";
    	Statement smt = con.createStatement();
    	ResultSet rs = smt.executeQuery(qry);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="order.css">
</head>
<body>
<nav class="navigation">
        <div class="logo">
          <img src="./logo2.jpg" alt="" />
          <div class="navtext">
            <a href="#">JEWEL JUNCTION</a>
          </div>
        </div>
        
        <div class="nav">
         <a href="index.html">Home</a>
          
          <!-- <a href="#">About</a>-->
          <a href="#servc">Services</a>
          <a href="#f_con">Contact</a>
          <a href="#">Cart</a>
          <a href="ring.jsp">Rings</a>
          <a href="necklace.jsp">Necklaces</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="./signin.jsp"><button class="btn2">Sign in</button></a> 
          <a href="./signup.jsp"><button class="btn2">Sign up</button></a>   
         <a href="./admin.html"><button class="btn2">Admin</button></a>
         
        </div>
</nav>

<%
if(rs.next()){
%>
<center>
<img alt="" src="<%= rs.getString("pimg") %>" height= 500px width="500px">
<h2>Product Name:<%= rs.getString("pname") %></h2>
<h2>Product Price:<%= rs.getString("prate") %></h2></center>
<a href="payment.jsp"><button>Pay now</button></a>

<footer>
        <div class="f_container" id="f_con">
            <div class="sec aboutus">
                <h2>About us</h2>
                <p>Welcome to Jewel Junction, where elegance meets craftsmanship. We take pride in curating a stunning collection of timeless jewelry that seamlessly blends contemporary design with traditional allure. Discover exquisite pieces that celebrate every moment and make a statement of enduring beauty. Welcome to a world where every jewel tells a story at Jewel Junction.</p>
                <ul class="sci">
                    <li><a href="#"><i class="fa-brands fa-square-facebook"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-square-twitter"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-square-instagram"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
                </ul>
            </div>
            <div class="sec quicklinks">
                <h2>Customer Service</h2>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Help</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="sec quicklinks">
                <h2>Know Your Jewellery</h2>
                <ul>
                    <li><a href="#">Men</a></li>
                    <li><a href="#">Women</a></li>
                    <li><a href="#">Gemstone Guide</a></li>
                    <li><a href="#">Digital Gold</a></li>
                </ul>
            </div>
            <div class="sec contact">
                <h2>Contact Us</h2>
                <ul class="info">
                    <li>
                        <span><i class="fa-solid fa-phone"></i><p><a href="#">+123945445</a></p></span>
                    </li>
    
                    <li>
                        <span><i class="fa-solid fa-envelope"></i><p><a href="#">jewel.junction.com</a></p></span>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
 <div class="copyrightText">
        <p>&copy; Copyright 2023 Jewel Junction. All rights reserved.</p>
    </div>
</body>


</html>
<%}}catch(Exception e){

}
%> --%>