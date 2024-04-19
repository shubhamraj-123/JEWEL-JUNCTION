<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%String pid = request.getParameter("pid");
    %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Payment Form</title>
    <link rel="stylesheet" href="payment.css" />
    
  </head>
  <style>
  
  @charset "ISO-8859-1";
* {
        margin: 0;
        padding: 0;
        text-decoration: none;
        box-sizing: border-box;
      }
      /*nav{
            background: rgb(246, 239, 246);
            height: 80px;
            width: 100%;
        }
        
        nav {
            background-color:#3688e9;
            border: 1px solid white;
            justify-content:space-around;
            border-radius: 5px;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            position: fixed;
            height: 80px;
            width: 100%;
        }
        nav ul{
            float: right;
            margin-right: 20px;
        }
        nav ul li{
            display: inline-block;
        }*/
      .navigation {
        position: fixed;
        left:0;
        right:0;
        top:0;
        width: 100%;
        height: 102px;
        background-color: white;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        z-index: 5;

        border: 1px solid white;
        box-shadow: 1px 2px rgb(211, 194, 228);
      }
      .nav a {
        margin: 20px;
        color: rgb(20, 20, 20);
        text-decoration: none;
        font-size: large;
        font-weight: 500;
        font-family: "Times New Roman", Times, serif;
      }
      .nav a:hover {
        color: rgb(244, 84, 167);
        /*text-decoration: underline;*/
        transform: scale(1.1);
      }
      .btn {
        font-size: large;
        width: 80px;
        height: 40px;
        font-weight: 200;
        font-family: "Times New Roman", Times, serif;
        margin: 15px;
        background-color: transparent;
        color: #4f3267;
        border-radius: 110px;
      }
      .btn2:hover {
        /*background-image: linear-gradient(50deg, rgb(244, 68, 171), rgb(179, 243, 145));*/
        background-color: #4158D0;
        background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
        background-color: #2949ff;
background-image: linear-gradient(43deg, #2949ff 0%, #fe1bf1 46%, #feff70 100%);
        
      }
      .logo img {
        width: 32%;
        margin-left: 5%;
      }
      .logo {
        display: flex;
        flex-direction: row;
        align-items: center;
      }
      .navtext a {
        padding: 25px;
        color: black;
      }
      
       footer{
       position:fixed;
       bottom:0;
       left:0;right:0;
    text-align: center;
    background-color:#4f3267 ;
    color: white;
    padding: 20px; 
    }

  </style>
  
  <body>
  
  <nav class="navigation">
        <div class="logo">
          <img src="./images/logo2.jpg" alt="" />
          <div class="navtext">
            <a href="#">JEWEL JUNCTION</a>
          </div>
        </div>
        
        <div class="nav">
         <a href="#">Home</a>
          
          <!-- <a href="#">About</a>-->
          <a href="#servc">Services</a>
          <a href="#f_con">Contact</a>
          <a href="cart.jsp">Cart</a>
          <a href="ring.jsp">Rings</a>
          <a href="necklace.jsp">Necklaces</a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="./logout_user.jsp"><button class="btn2">Log out</button></a>   
         <!-- <a href="./admin.html"><button class="btn2">Admin</button></a> -->
         
        </div>
</nav>


    <form>
      <div class="payment_container">
        <h1>Payment Details</h1>
        <div class="first-row">
          <div class="owner">
            <h3>Card Holder Name</h3>
            <div class="input-field">
              <input
                type="text"
                placeholder="Enter card holder name"
                required
              id="p1"/>
            </div>
          </div>
          <div class="cvv">
            <h3>CVV</h3>
            <div class="input-field">
              <input
                type="password"
                placeholder="Enter CVV"
                maxlength="3"
                required
              id="p2"/>
            </div>
          </div>
        </div>
        <div class="second-row">
          <div class="card-number">
            <h3>Card Number</h3>
            <div class="input-field">
              <input
                type="text"
                placeholder="Enter card number"
                required
                maxlength="16" minlength="16"
              id="p3"/>
            </div>
          </div>
        </div>
        <div class="third-row">
          <h3>Expiry date</h3>
          <div class="selection">
            <div class="date">
              <select name="months" id="months" required>
                <option value="Jan">Jan</option>
                <option value="Feb">Feb</option>
                <option value="Mar">Mar</option>
                <option value="Apr">Apr</option>
                <option value="May">May</option>
                <option value="Jun">Jun</option>
                <option value="Jul">Jul</option>
                <option value="Aug">Aug</option>
                <option value="Sep">Sep</option>
                <option value="Oct">Oct</option>
                <option value="Nov">Nov</option>
                <option value="Dec">Dec</option>
              </select>
              <select name="years" id="years" required>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2028">2029</option>
                <option value="2028">2030</option>
              </select>
            </div>
            <div class="p_cards">
              <img src="payment/mc.png" alt="" />
              <img src="payment/vi.png" alt="" />
              <img src="payment/rupay.png" alt="" style="height: 63px" />
            </div>
          </div>
        </div>
        <button onclick="sub_fun()" type="submit">Pay Now</button>
      </div>
    </form>
    
 <footer>
        Copyright &copy; 2023 Jewel Junction. | All rights reserved.
    </footer>
    <script>
    
      function sub_fun() {
    	  let p1=document.getElementById("p1");
    	  let p2=document.getElementById("p2");
    	  let p3=document.getElementById("p3");
    	  var l=p3.value;
    	  
    	  if(p1.value=="" || p2.value=="" || p3.value=="")
				{
				
					alert("Wrong Credentials Entered!! Try again.")
				}
			else if(l.length!="16"){
				alert("cardnumber should be 16 digit")
				
			}
			else if(  localStorage.getItem("payment")=='0'){
				alert("payment already done")
				
			}
			
			else{
				
			
    	  var b=localStorage.getItem("payment");
    	    alert("RS."+b+" "+"Payment Successful! Thank you Visit again!");
    	    localStorage.setItem("payment",'0');
    
    	     
			}
      }
    </script>
  </body>
</html>

