<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%> 
<% try{
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jeweljunction","1234"); 
String qry = "select * from rings"; 
Statement smt =con.createStatement(); 
ResultSet rs = smt.executeQuery(qry); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rings</title>
    <link rel="stylesheet" href="ring.css" />
    <link rel="stylesheet" href="nv.css" />
    <link rel="stylesheet" href="./S_CSS/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="logo.jpeg" />
  </head>
  <body>
  <nav class="navigation">
        <div class="logo">
          <img src="./images/logo2.jpg" alt="" />
          <div class="navtext">
            <a href="#">JEWEL JUNCTION</a>
          </div>
        </div>
        <div class="nav">
          <a href="index.html">Home</a>
          
          <!-- <a href="#">About</a>-->
          <!-- <a href="#servc">Services</a> -->
          <a href="#f_con">Contact</a>
          <a href="cart.jsp">Cart</a>
          <a href="ring.jsp">Rings</a>
          <a href="necklace.jsp">Necklaces</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="./logout_user.jsp"><button class="btn">Log out</button></a>   
<!--          <a href="./admin.html"><button class="btn">Admin</button></a>-->        
</div>
        
      </nav>
    <section id="product1" class="section-p1">
      <div class="pro-container">
        <%while (rs.next()){%>
          <div class="pro">
          
			<a href="#"><img src="<%= rs.getString("pimg") %>" alt="" onclick="add(src,<%=rs.getLong("prate")%>)" /></a>            <div class="des">
              <a href="#" style="text-decoration:none"><h5><%= rs.getString("pname") %></h5></a>
              <h4>₹ <%= rs.getLong("prate") %></h4>
            </div>
          </div><%} %>
      </div>
    </section>
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
                        <span><i class="fa-solid fa-phone"></i><p><a href="#">+1239454459</a></p></span>
                    </li>
    
                    <li>
                        <span><i class="fa-solid fa-envelope"></i><p><a href="#">www.jewel.junction.com</a></p></span>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
        <div class="copyrightText">
        <p>&copy; Copyright 2023 Jewel Junction. All rights reserved.</p>
    </div>
    
    <script>
     function add(src,rate)
     {
       
    	 localStorage.setItem('imagesrc',src);
    	 localStorage.setItem('price',rate);
    	 window.location.href='order.jsp';
    	 
     }
    
    </script>
  </body>
</html>

<% rs.close(); smt.close(); con.close(); }catch(Exception e){ out.print(e); } %>
