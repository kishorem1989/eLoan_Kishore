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
	    width: 800px;
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
<title>Loan Application Form</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body onload="myFunction()">
<jsp:include page="headeruser.jsp"/>
<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->
	
	
	
	<% 
	if (request.getAttribute("message")!=null){
		String message = request.getAttribute("message").toString();
		String applicationNumber = request.getAttribute("applicationNumber").toString();
	%>
		<h2 style="color:red;"><%=message %></h2>
		<h2 style="color:red;"><%=applicationNumber %></h2>
	<% //request.setAttribute("message","");
		//request.setAttribute("applicationNumber","");
	} %>
	<div align="center">
		<form action="user?action=placeloan" method="post">
			<h2>Loan Application Form</h2>
			<table>
				<tr>
					<td align="right"><b>Loan Name : </b></td>
					<td><input type="text" name="purpose" required/></td>
				</tr>
			    <tr>
					<td align="right"><b>Loan Amount Requested : </b></td>
					<td><input type="text" name="amtrequest" required/></td>
			    </tr>
			    <tr>
					<td align="right"><b>Loan Application Date : </b></td>
					<td><input type="text" name="applicationDate" required/></td>
			    </tr>
			    <tr>
					<td align="right"><b>Business Structure : </b></td>
					<td><input type="radio" name="businessStructure" value="individual" required>Individual 
			 		<input type="radio" name="businessStructure" value="organization" required>Organization</td>
			    </tr>
			    <tr>
					<td align="right"><b>Billing Indicator : </b></td>
					<td><input type="radio" name="billingIndicator" value="salaried" required>Salaried 
			 		<input type="radio" name="billingIndicator" value="notSalaried" required>Not Salaried</td>
			    </tr>
			    <tr>
					<td align="right"><b>Address : </b></td>
					<td><input type="text" name="contactAddress" required/></td>
			    </tr>
			    <tr>
					<td align="right"><b>Mobile Number : </b></td>
					<td><input type="text" name="mobileNumber" required/></td>
			    </tr>
			    <tr>
					<td align="right"><b>Email : </b></td>
					<td><input type="text" name="emailAddress" required/></td>
			    </tr>
			    <tr>
			    	<td></td>
			    	<td><input class="button" type="submit" value="Submit"/> <input class="button" type="Reset" value="Reset"/></td>
			    </tr>
			    
			</table>
		</form>
	</div>
	
<jsp:include page="footer.jsp"/>
</body>
</html>