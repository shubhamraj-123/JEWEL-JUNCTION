<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="validate3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<title>Insert title here</title>
</head>
<body onload="d()">



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
	String EMAIL="abc1351@gmail.com";
 	String PRICE=request.getParameter("price");
   	String IMAGE=request.getParameter("image");
   	String P_ID=request.getParameter("p_id");
	
    String q= "INSERT INTO CART(EMAIL,PRICE,IMAGE,P_ID) VALUES('" +EMAIL+ "','" + PRICE + "','" + IMAGE+ "','" + P_ID + "')";
	int i = smt.executeUpdate(q);
	
   	%>
  
   <script>
   function d()
   {
	   window.location.href='cart.jsp';
   }
  

    </script>
    
    
</body>
</html>