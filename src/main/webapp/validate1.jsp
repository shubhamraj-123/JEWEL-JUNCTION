<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
  	String qry = "SELECT * FROM USERS";
  	rs = smt.executeQuery(qry);
  	%>
  	
  	
  		
<% 

String username = request.getParameter("enterEmail"); 
String password = request.getParameter("password"); 
int c=0;
while (rs.next()) {
	String p=rs.getString("EMAIL");
	String p1=rs.getString("PASSWORD");
	
	
   if(username.equals(p.toLowerCase()) && password.equals(p1))
   {
    session.setAttribute("enterEmail",username);  
    session.setAttribute("password",password); 
%>
   <script>
	
    window.alert("Authentication successful!");
    window.location.href='ring.jsp';
    </script>

 
   	
 <% 
    c++;
    break;
    }
}

if(c==0)
{
%>

	
	 <script>
    
	window.alert("user doesnot exit");
    window.location.href='signup.jsp';
    </script>
	
	
<%	
}

%>

</body>
</html>