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
</style>
<title>Loan Application Details</title>
</head>
<body>
<jsp:include page="headeruser.jsp"/>
	
	<%
		LoanInfo loanInfo = (LoanInfo)request.getAttribute("loaninfo");
	%>
	<div align="center">
		<h2>Loan Application Details</h2>
		<table>
			<tr>
				<th align="right">Loan Application Number</th>
				<td align="left"><%= loanInfo.getApplno()%></td>
			</tr>
			<tr>
				<th align="right">Loan Purpose</th>
				<td align="left"><%= loanInfo.getPurpose()%></td>
			</tr>
			<tr>
				<th align="right">Loan Amount requested</th>
				<td align="left"><%= loanInfo.getAmtrequest()%></td>
			</tr>
			<tr>
				<th align="right">Application Date</th>
				<td align="left"><%= loanInfo.getDoa()%></td>
			</tr>
			<tr>
				<th align="right">Business Structure</th>
				<td align="left"><%= loanInfo.getBstructure()%></td>
			</tr>
			<tr>
				<th align="right">Business Indicator</th>
				<td align="left"><%= loanInfo.getBindicator()%></td>
			</tr>
			<tr>
				<th align="right">Applicant Address</th>
				<td align="left"><%= loanInfo.getAddress()%></td>
			</tr>
			<tr>
				<th align="right">Applicant Email</th>
				<td align="left"><%= loanInfo.getEmail()%></td>
			</tr>
			<tr>
				<th align="right">Applicant Mobile Number</th>
				<td align="left"><%= loanInfo.getMobile()%></td>
			</tr>
			<tr>
				<th align="right">Application Status</th>
				<td align="left"><%= loanInfo.getStatus()%></td>
			</tr>
		</table>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>