<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="order.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body >



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
          <a href="#servc">Services</a>
          <a href="#f_con">Contact</a>
          <a href="#">Cart</a>
          <a href="ring.jsp">Rings</a>
          <a href="necklace.jsp">Necklaces</a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="./logout_user.jsp"><button class="btn2">Log out</button></a>   
         <!-- <a href="./admin.html"><button class="btn2">Admin</button></a> -->
         
        </div>
</nav>







<form action="validate3.jsp" method="post">

<br><br><br>
 
<section class="payment">
 

<div class="right">
  <div class="top">
  <center>
    <img src="./sabrianna-NhrcL_C0sFA-unsplash.jpg" alt=""   height="280px" width="400px"  id="image">
<!--     <img src="./AR00424-SS0000-urja-evil-eye-front-open-ring-in-gold-plated--silver-prd-3-pd.jpg" alt=""  height="280px" width="400px">--> 
 </center>
  </div>

  <!-- <div class="bottom"></div>
   <img src="./sabrianna-NhrcL_C0sFA-unsplash.jpg" alt=""   height="280px" width="400px">
   <img src="./AR00424-SS0000-urja-evil-eye-front-open-ring-in-gold-plated--silver-prd-3-pd.jpg" alt=""  height="280px" width="400px">
  </div> -->
</div>


  <div class="m">
    <span><button class="btn">2  <i class="fa-solid fa-star" style="color: #1372d8;"></i> &#160  &#160  100</button> <a href="" style="text-decoration: underline;">product details <i class="fa-solid fa-arrow-up fa-rotate-180"></i></a> </span>
    <br><br>
    <h3>Genevia Gemstone Ring</h3>
    
    <i style=" color: #1372d8;"> Set in 14 KT Yellow Gold(2.590 g)</i>
   
    <br><br>
    <i style="font-weight: 500;font-size: 18px;"><strong>₹<input type="text" name="price" value="699" id="price" style="color: #1372d8;width:100px;border:none"></strong>(Incl. of all taxes) <span style="color: #1372d8;">(50% OFF)</span></i>
    <br>
    <br>
  
   <button id="bag"  type="submit"  style="visibility: hidden;"><i class="fa-solid fa-cart-shopping" style="font-size: 20px;" ></i> &#160 &#160 ADD TO BAG</button>
  
    <br><br>
    
    <hr style="background-color: #477fba;">
   <input type="text" id="imge" name="image" style="visibility: hidden;">
   <br>
    DELIVERY OPTIONS    <i class="fa-solid fa-truck fa-bounce" style="color: #3886da;"></i> 
    <br><BR>
    <input type="text"  placeholder="Pincode" id="location" oninput="add()" maxlength="6">
    

   
    <button style="height: 50px;width:70px;border-radius: 10px; background-color: #3886da;" id="btn1" onclick="submi()" type="button">submit</button>
    <br><br>
    <div id="adding">

      <i class="fa-solid fa-truck fa-bounce" style="color: #3886da;"></i>&#160 &#160 Get it by Tue, Dec 26
      <br><br>
      <i class="fa-solid fa-money-bill-1-wave fa-beat"></i>&#160 &#160Pay on delivery available
      <br><br>
      <i class="fa-solid fa-right-left"></i>&#160 &#160 Easy 7 days return & exchange available <span style="color: #3886da;"> MORE IN </span>
      <br><br>
      100%  Original  Product
      <br><br>
    
    </div>
    <b>PRODUCT DETAILS</b>
    <br><br>
    <i>
    The Slazenger Jwellery Athleisure  makes <br>a hard-to-miss style statement while delivering superior <br>
     Cut from  Gold mining, it's so soft, you'll want <br>to wear this jwellery  everywhere you go.</i>
     <br><br><br>
     <b>FEATURE</b>
    <br><br>
    <pre style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"><i>Athleisure Jwellery
      Bio wash finishing process softens the metal and reduces friction
      Neck: Round Neck 
      Diameter:1cm 
      Design: Brand carrier 
      size: Free 
      Fit: Regular fit</i></pre>
      <br><br>

    <b>MATERIAL CARE</b>
    <br>
      <i>
        80% Gold   20% Carbon  <br> Brush Wash</i> 
      <br><br>
      <b>
      Product Code:<input type="text" name="p_id" id="p_id" value="15789284"   style="border: none; font-size: 16px;width: 90px;"> <br>
      Seller: <span style="color: #3886da;">True com retail</span>
      </b>
     
      <br> <br><br><br>
      <i class="fa-solid fa-medal fa-xl" style="font-size: 50px;color: #3886da;"></i> Quality &#160 &#160 &#160 &#160 &#160 &#160  &#160 &#160&#160 &#160
      <i class="fa-brands fa-product-hunt fa-xl" style="font-size: 50px;color: #3886da;"></i> Product
      
  </div>
</form>

</section>
<div class="tooltip">
  <i class="fa-regular fa-bell fa-bounce fa-sm"  id="notification"></i>
  <span class="tooltiptext" style="color: rgb(11, 154, 215);">Latest Offer</span>
</div>

</div>





     <%!
	Connection con = null;
	Statement smt = null;
	ResultSet rs = null;
	
	public void jspInit() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jeweljunction", "1234");
			smt = con.createStatement();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}

	public void jspDestroy() {
		try {
			
			smt.close();
		
			con.close();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}%>

     
  	<%
  	String qry = "SELECT * FROM PINCODE";
  	rs = smt.executeQuery(qry);
  	%>






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
  document.getElementById("price").value=localStorage.getItem('price');
  document.getElementById("image").src=localStorage.getItem('imagesrc');
  document.getElementById("imge").value=document.getElementById('image').src;   
  

    function submi(){
    	
    	  const edit=document.getElementById("adding");
    	  let b=document.getElementById("location");
    		
    	  const bag=document.getElementById("bag");
    	
    	var c=0;
   
    	 <%
    	  while (rs.next()) {
  		 %>
  		var p=<%=rs.getString("PIN")%>
  		if(p==b.value)
  			{
  		 window.alert("Deliverable")
  		edit.style.display="block";
  		 bag.style.visibility="visible";
  		  c=c+1;
  		    }
  		
  		
  		<%
		}
		%>
		if(c==0)
			{
			 window.alert(" Not deliverable at this PIN code!")
			
			}
    	
    	  
  }
    
  function add()
  {
  let b=document.getElementById("location");
  let c=document.getElementById("btn1");
  b.style.borderColor="red";
 
  if(b.value.length=="6")
  {
 
	  c.style.visibility="visible";
	  b.style.borderColor="green";



  }
  else{
    c.style.visibility="hidden";

  }
}
  

  


  </script>
 

  

</body>
</html> 