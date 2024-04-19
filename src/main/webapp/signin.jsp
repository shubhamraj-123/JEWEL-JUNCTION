<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="signup.css">
 <link rel="stylesheet" href="signin.css">
 <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
 
    <title>Log in</title>
 
 <style>
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
      .btn2 {
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
    </style>
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
          <a href="#servc">Services</a>
          <a href="#f_con">Contact</a>
          <a href="#">Cart</a>
        
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
         <!-- <a href="./admin.html"><button class="btn2">Admin</button></a> -->
         
        </div>
</nav>
<div class="major_div">
  <div class="signup_h1">
    <h2>Login with Jewel Junction</h2> <br>
  </div> <br>
<div class="signup_p">
  <p>Login to unlock best prices and become an insider for our exclusive launches
    & offers. Complete your profile and get ₹250 worth of xCLusive Points.</p>
</div>

<br>
    <form action="validate1.jsp">
      <div class="signup_2">
        <input type="email" id="enterEmail" class="sign_inp" name="enterEmail" placeholder="Enter Email" required>
      </div>
      <div class="signup_3">
        <input type="password" id="password" class="sign_inp" name="password" placeholder="Password" required>

      </div>
      <button type="submit" onclick="signup_validation()" class="submit_btn" style="width: 100%;">Continue to login</button>
    </form>

<div class="log_in">
  <p>New to Jewel Junction?<a href="./signup.jsp"><span>Create an Account</span></a></p>
</div>

</div>


<script src="signup.js" charset="utf-8"></script>

</body>
</html>