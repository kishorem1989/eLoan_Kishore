<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	
	thead {
	  background: #395870;
	  color: #fff;
	}
	body {
	    background-color : #e9f2eb;;
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
<title>admin home</title>
</head>
<body>
<jsp:include page="headeradmin.jsp"/>
	<table border="0" width="80%" align="center" height="70%">
		<tr><td align="center"><h2>Admin Dashboard</h2></td></tr>
		<tr><td align="center"><a href="admin?action=listall">List All</a></td></tr>
		<tr><td align="center"><a href="admin?action=process">Process Loan</a></td></tr>
	</table>
<jsp:include page="footer.jsp"/>
</body>
</html>