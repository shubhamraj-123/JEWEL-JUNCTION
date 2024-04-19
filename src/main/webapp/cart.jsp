<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rings</title>
	<link rel="stylesheet" href="cart.css">
	<link rel="stylesheet" href="cart1.css">

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
          <!-- <a href="#servc">Services</a> -->
          <a href="#f_con">Contact</a>
          <a href="#">Cart</a>
          <a href="ring.jsp">Rings</a>
          <a href="necklace.jsp">Necklaces</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="./logout_user.jsp"><button class="btn">Log out</button></a>   
<!--          <a href="./admin.html"><button class="btn">Admin</button></a>-->        
</div>
        
      </nav>








   <button onclick="del()" style="margin-top:108px;position:fixed"><i class="fa-solid fa-trash" style="font-size: 20px;color: red;"></i></button>
    <br>
    <br>
    <% try{
Class.forName("oracle.jdbc.driver.OracleDriver"); Connection con =
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jeweljunction",
"1234"); String qry = "select * from cart"; Statement smt =
con.createStatement(); ResultSet rs = smt.executeQuery(qry); %>




 <%
 String username ="abc1351@gmail.com"; 
 while (rs.next()){
        
	 String p=rs.getString("EMAIL");
	 if(username.equals(p.toLowerCase()))
	   {  
	 
        
   %>
     <div class="upper">
         
         
        
        <div class="img_wraper">
            <img src="<%= rs.getString("image") %>"alt="">
        </div>
         <div class="content">
                <h3>Genevia Gemstone</h3>
    
                <i style=" color: #1372d8;"> Set in 14 KT Yellow Gold(2.590 g)</i>
                <br><br>
                <span>qantity<input type="number"  min="1" max="2" value="1"></span><br><br><br>
                <i style="font-weight: 500;font-size: 18px;"><strong>₹<input type="text" value=" <%= rs.getString("price") %>" style="background-color: white;border: none;color: #1372d8;"></strong> &#160 &#160<span style="color: #1372d8;">(50% OFF)</span></i>
        </div>
        <div class="check">
                <input type="checkbox" value="123"  onclick="check()">
        </div>
    </div>
     <%} }%>
     
     <% rs.close(); smt.close(); con.close(); }catch(Exception e){ out.print(e); } %>
     
    <div class="pytm">
    BILL: <input type="text" value="0" id="bill" style="height: 30px;width: 100px;color: #1372d8;background-color: white;margin-top: 50px;border: none;">
    <br><br>

     <button type="button" style="height: 30px;width: 100px;color: white;background-color: #1372d8;border-radius: 2px;" onclick="paytm()">PAY</button>
     </div>

 <footer>
        Copyright &copy; 2023 Jewel Junction. | All rights reserved.
    </footer>

    <script>
    function del() {
     var el= document.querySelectorAll('.upper');
     var b=document.querySelectorAll('input[type="checkbox"]');
     var i=0;
    var n=b.length;
        
      while(i<n)
      {
         if(b[i].checked)
         {
          
            el[i].remove();
         }
       
        i=i+1;
        }
      document.getElementById('bill').value='0';
}

        function check(){
         var d=document.querySelectorAll('input[type="text"]');
         var b=document.querySelectorAll('input[type="checkbox"]');
         var c=document.querySelectorAll("input[type=number]");
       
         var i=0;
         var n=b.length;
         var sum=0;
         
         while(i<n)
         {
            if(b[i].checked)
            {
         
               //   alert(c[i].value)
        
               let q=parseInt(d[i].value);
               let r=parseInt(c[i].value);
               sum=sum+(q*r);
             
            }
          
           i=i+1;
           }
           document.getElementById('bill').value=sum;
        }
       
        function paytm()
        {
            var pm=document.getElementById('bill').value;
            if(pm!='0')
            {
                localStorage.setItem("payment",pm);
                window.location.href='payment.jsp';
            }
            else{
                alert('please select a item');
            }
        }


    </script>
    
    
</body>
</html>