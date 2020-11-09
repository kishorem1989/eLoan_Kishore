<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="com.iiht.evaluation.eloan.model.LoanInfo" %>
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
<title>Edit Loan UI</title>
</head>
<body>
<jsp:include page="headeruser.jsp"/>
<!-- <div align="right"><a href="adminhome1.jsp">Admin Home</a></div>-->

<script>
function myFunction() {
  alert("Loan Application edited successfully");
}
</script>

	
	<%
		LoanInfo loanInfo = (LoanInfo)request.getAttribute("loaninfo");
	%>
	<div>
		<form action="user?action=editLoanProcess" method="post">
			
			<table align="center" width="80%">
			<tr><td colspan="2" align="center"><h2>Edit Loan Application Details</h2></td></tr>
				<tr>
					<th align="right">Loan Application Number : </th>
					<td><input id="applicationNo" name="applicationNo" value="<%= loanInfo.getApplno()%>" required readonly></input></td>
				</tr>
				<tr>
					<th align="right">Loan Name : </th>
					<td><input type="text" id="purpose" name="purpose" value="<%= loanInfo.getPurpose()%>" required></td>
				</tr>
				<tr>
					<th align="right">Loan Amount requested : </th>
					<td><input type="text" id="amtrequest" name="amtrequest" value="<%= loanInfo.getAmtrequest()%>" required></td>
				</tr>
				<tr>
					<th align="right">Application Date : </th>
					<td><input type="text" id="applicationDate" name="applicationDate" value="<%= loanInfo.getDoa()%>" required></td>
				</tr>
				<tr>
					<th align="right">Business Structure : </th>
					<td><input type="text" id="businessStructure" name="businessStructure" value="<%= loanInfo.getBstructure()%>" required></td>
				</tr>
				<tr>
					<th align="right">Business Indicator : </th>
					<td><input type="text" id="billingIndicator" name="billingIndicator" value="<%= loanInfo.getBindicator()%>" required></td>
				</tr>
				<tr>
					<th align="right">Applicant Address : </th>
					<td><input type="text" id="contactAddress" name="contactAddress" value="<%= loanInfo.getAddress()%>" required></td>
				</tr>
				<tr>
					<th align="right">Email : </th>
					<td><input type="text" id="emailAddress" name="emailAddress" value="<%= loanInfo.getEmail()%>" required></td>
				</tr>
				<tr>
					<th align="right">Mobile Number : </th>
					<td><input type="text" id="mobileNumber" name="mobileNumber" value="<%= loanInfo.getMobile()%>" required></td>
				</tr>
				<tr>
					<th align="right">Application Status : </th>
					<td><%= loanInfo.getStatus()%></td>
				</tr>
				<tr>
					
					<td colspan="2" align="center"><input class="button" type="submit" value="submit" onclick="myFunction()" required/></td>
				</tr>
			</table>
		</form>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>