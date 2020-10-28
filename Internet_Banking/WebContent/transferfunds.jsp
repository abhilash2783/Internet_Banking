<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  
  <div class="welcome-text">
    <div  class="container" style="width:500px">
  <div class="kuchnai"> Money Transfer</div>
  <form class="form-inline" method="post" action="">

    <label for="accno">Account no. :</label>
    <input type="text" name="accno1" class="form-control"  placeholder="enter Account number">
    <br>
    <br>

    <label for="uname">UserName :</label>
    <input type="text" name="uname1" class="form-control" placeholder="enter Account holder's name">
    <br>
    <br>

    <label for="ifsc">IFSC code :</label>
    <input type="text" name="ifsc1" class="form-control"  placeholder="IFSC Code">
    <br>
    <br>

    <label for="amt">Amount(Rs) :</label>
    <input type="text" name="amt1" class="form-control" placeholder="enter amount in Rs">
    <br>
    <br>

    <button type="submit" class="btn btn-success">Transfer</button>

   
  </form>
  </div>
</div>
</body>
   


</html>
