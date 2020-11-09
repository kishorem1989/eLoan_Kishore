<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	table, th, td {
	  border: 1px solid black;
	  border-collapse: collapse;
	  padding: 10px;
	}
	thead {
	  background: #395870;
	  color: #fff;
	}
	body {
	    background-color : #e9f2eb;
	    margin: 0;
	    padding: 0;
	}
	h1 {
	    color : #000000;
	    text-align : center;
	    font-family: "SIMPSON";
	}
	form {
	    width: 300px;
	    margin: 0 auto;
	}
</style>
<title>user home</title>
</head>
<body>
<jsp:include page="headeruser.jsp"/>
	<!-- write the html code to display hyperlinks for user functionalities -->
	
	<h2 align="center" style= "color:Green;">User Dashboard</h2>
	<div align="center">
		<a style="text-align:center" href="user?action=application">Apply for Loan</a><br>
		<a style="text-align:center" href="user?action=trackloan">Track Loan Application</a><br>
		<a style="text-align:center" href="user?action=application1">Edit Loan Application</a>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>