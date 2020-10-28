<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
<body>
<%
	if(session.getAttribute("Username")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<div class="wrapper">
<ul class="nav-area">
<li><a href="homepage.jsp">Home</a></li>
<li><a href="accsummary.jsp">Account Summary</a></li>
<li><a href="transferfunds.jsp">Transfer Funds</a></li>
<li><a href="index.html">Statement</a></li>
<li><a href="change.jsp">Change of details</a></li>
<li><a href="login.jsp">Logout</a></li>
</ul>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="enterance">
        <h1>
Welcome to LCPD Bank</h1>
    </div>

</body>
</html>