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
	    width: 600px;
	    margin: 0 auto;
	}
	.button {
	  background-color: #555555;
	  border: none;
	  color: white;
	  padding: 5px 10px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 4px 2px;
	  cursor: pointer;
	}
</style>
<title>Edit Loan Application</title>
</head>
<body>
<jsp:include page="headeruser.jsp"/>
	
	<% 
	if (request.getAttribute("message")!=null){
		String message = request.getAttribute("message").toString();
	%>
		<h2 align="center" style="color:white;background-color:red;"><%=message %></h2>
	<% } %>
	<form action="user?action=editloan" method="post">
		<table align="center" width="80%">
			<tr><td colspan="2" align="center"><h2>Edit Loan Application Details</h2></td></tr>
			<tr>
				<th align="right">Loan Application Number</th>
				<td><input type="text" name="applicationNumber" required/></td>
		    </tr>
		    <tr>
		    	<td align="center" colspan="2"><input class="button" type="submit" value="Submit"/> <input class="button" type="Reset" value="Reset"/></td>
		    </tr>
		</table>
	</form>
<jsp:include page="footer.jsp"/>
</body>
</html>