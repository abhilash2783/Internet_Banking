<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;900&display=swap" rel="stylesheet">
   
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
    <div class="wrapper">
<ul class="nav-area">
<li><a href="homepage.jsp">Home</a></li>
<li><a href="accsummary.jsp">Account Summary</a></li>
<li><a href="register.html">Transactions</a></li>
<li><a href="index.html">Statement</a></li>
<li><a href="change.jsp">Change of details</a></li>
<li><a href="login.jsp">Logout</a></li>
</ul>
</div>

<body>
<%
	if(session.getAttribute("Username")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<%
	String url="jdbc:mysql://localhost:3306/crt";
	String uname="root";
	String pass="admin";
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("||||");
	Connection con=DriverManager.getConnection(url,uname,pass);
	System.out.println("||||..");
	PreparedStatement st=con.prepareStatement("select * from bank_details where uid= ?");
	String name=(String)session.getAttribute("Username");
	st.setString(1,name);
	ResultSet rs=st.executeQuery();
	System.out.println("||||...");
	rs.next();
	System.out.println("||||....");
%>
  
  <div class="welcome-text">
    <div  class="container" style="width:500px">
  <div class="kuchnai"> Account Details</div>
  <br><br>
  
   User:
    
    <%out.println(rs.getString("uid"));%>
  <br><br>
  
  <label for="ACnumber">A/C Number:</label>
    <label for="UserACnumber"><% out.println(rs.getString("acc_no")); %></label>
  <br><br>
   
  
  
      <label for="exampleFormControlInput1">Email address: </label>
    <label for="Useremail"><%out.println(rs.getString("mail_id")); %></label>
  <br><br>
  
   
  
    <label for="phonenumber">Phone no.:</label>
    <label for="Userphone"><% out.println(rs.getString("phn_no")); %></label>
  <br><br>
   
  
    <label for="Balance">Balance:</label>
    <label for="UserBalance"><% out.println(rs.getString("balance")); %></label>
  <br><br>
   
  
    
  </div>
</div>
</body>
   


</html>
