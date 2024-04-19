<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="signup.css">

    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">


    <title>Sign Up</title>
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
        position: absolute;
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
    <h2>Signup with Jewel Junction</h2>
  </div>
<div class="signup_p">
  <p> <br><br> Unlock Best prices and become an insider for our exclusive launches & offers.
     Complete your profile and get ₹250 worth of xCLusive Points.</p>
</div>


<div class="para">
  <p><span>----------</span>Or continue with <span>----------</span></p>
</div>

    <form action="validate.jsp" method="post">
      <div class="signup_1">
        <input type="tel" id="mobileNumber" class="sign_inp" name="mobileNumber" placeholder="Mobile Number" required  minlength="10" maxlength="10" >
        <input type="email" id="enterEmail" class="sign_inp" name="enterEmail" placeholder="Enter Email" required>
      </div>
      <div class="signup_2">
        <input type="text" id="firstName" class="sign_inp" name="firstName" placeholder="First Name" required>

        <input type="text" id="lastName" class="sign_inp" name="lastName" placeholder="Last Name" required>
      </div>
      <div class="signup_3">
        <input type="password" id="password" class="sign_inp" name="password" placeholder="Password" minlength="6" required >
        <input type="password" id="confirmPassword" class="sign_inp" name="confirmPassword" placeholder="Confirm Password" required>
      </div>
    

    <div class="radio_div">
      <input type="radio" id="option1" name="options" value="option1" checked>
      <label for="option1">Male</label>

      <input type="radio" id="option2" name="options" value="option2">
      <label for="option2">Female</label>

      <input type="radio" id="option3" name="options" value="option3">
      <label for="option3">I don't want to specify</label>
    </div>

   <div class="checkbox_div">
    <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
    <label class="lab_che" for="vehicle1">&nbsp;I do hereby declare that above furnished
    information is correct &nbsp;to best of my knowledge</label><br>
    </div>
    <br>

 <center>
<button type="submit" onclick="signup_validation()" class="submit_btn">Sign Up</button>
</center>
</form>

<div class="log_in" style="font-size: 25px;">
  <p style="font-size: 15px;">Already have an account?<a href="./signin.jsp"><span>Log in</span></a></p>
</div>

</div>
 


<script>

    
document.addEventListener('DOMContentLoaded', function() {
      var checkbox = document.getElementById('vehicle1');
      checkbox.setAttribute('checked', 'true');
    });


    function validateMobileNumber(number) {
      // Regular expression for a typical 10-digit mobile number
      var regex = /^[0-9]{10}$/;

      // Test the input against the regular expression
      if (regex.test(number)) {
        return true; // Valid mobile number
      } else {
        return false; // Invalid mobile number
      }
    }

    function validateEmail(email) {
      var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (emailRegex.test(email)) {
        return true;
      } else {
        return false;
      }
    }

    function validateFirstName(fname) {
      var nameRegex = /^[a-zA-Z]+$/;
      if (nameRegex.test(fname)) {
        return true;
      } else {
        return false;
      }
    }

    function validateLastName(lname) {
      var nameRegex = /^[a-zA-Z]+$/;
      if (nameRegex.test(lname)) {
        return true;
      } else {
        return false;
      }
    }

    function signup_validation(){
    var phoneNumber = document.getElementById("mobileNumber").value;
    var pass=document.getElementById("password").value;
    var newpass=document.getElementById("confirmPassword").value;
    if(pass!=newpass)
    	{
    	alert("2 Confirmation password are not same")
    	document.getElementById("confirmPassword").value="";
    	}
    if (validateMobileNumber(phoneNumber)) {
    }
    else {
    	alert("inavlid mob please reenter")
    	document.getElementById("mobileNumber").value="";
      
    }

    var email = document.getElementById("enterEmail").value;
   
   
    if (validateEmail(email)) {
    } else {
      alert("Please enter valid email");
    }

    var fname = document.getElementById("firstName").value;
    if (validateFirstName(fname)) {
    } else {
      alert("Please enter valid first name");
    }

    var lname = document.getElementById("lastName").value;
    if (validateLastName(lname)) {
    } else {
      alert("Please enter valid last name");
    }

  }

</script>

</body>
</html>