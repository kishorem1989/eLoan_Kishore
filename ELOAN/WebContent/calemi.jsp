<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
 <%@ page import="com.iiht.evaluation.eloan.dto.LoanDto" %>
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
<title>Approve Loan Page</title>
</head>
<body>
<jsp:include page="headeradmin.jsp"/>
<script>
function myFunction() {
  alert("Loan Approved successfully");
}
</script>
 
	
	
	<%
	LoanDto loanDto = (LoanDto)request.getAttribute("loanDto");
	%>
	<div>
		<form action="admin?action=updatestatus" method="post">
			<table align="center" width="90%">
			<tr><td colspan="2" align="center"><h2 align="center">Loan Application Details</h2></td></tr>
				<tr>
					<th align="right">Loan Application Number : </th>
					<td><input id="applicationNo" name="applicationNumber" value="<%= loanDto.getApplno()%>" required readonly></input></td>
				</tr>
				<tr>
					<th align="right">Loan Name : </th>
					<td><input type="text" id="purpose" name="purpose" value="<%= loanDto.getPurpose()%>" required readonly></td>
				</tr>
				<tr>
					<th align="right">Loan Amount requested : </th>
					<td><input type="text" id="amtrequest" name="amtSanctioned" value="<%= loanDto.getAmtSanctioned()%>" required></td>
				</tr>
				<tr>
					<th align="right">Term of Loan : </th>
					<td><input type="text" id="term" name="term" value="<%= loanDto.getTerm()%>" required></td>
				</tr>
				<tr>
					<th align="right">Interest Rate : </th>
					<td><input type="text" id="interestRate" name="interestRate" value="<%= loanDto.getInterestRate()%>" required></td>
				</tr>
				<tr>
					<th align="right">EMI : </th>
					<td><input type="text" id="emi" name="emi" value="<%= loanDto.getEmi()%>" required></td>
				</tr>
				<tr>
					<th align="right">Payment Start Date : </th>
					<td><input type="text" id="paymentStartDate" name="paymentStartDate" value="<%= loanDto.getStartDate()%>" required></td>
				</tr>
				<tr>
					<th align="right">Payment End Date : </th>
					<td><input type="text" id="paymentEndDate" name="paymentEndDate" value="<%= loanDto.getEndDate()%>" required></td>
				</tr>
				<tr>
					<th align="right">Application Status : </th>
					<td><%= loanDto.getStatus()%></td>
				</tr>
				<tr>
					
					<td colspan="2" align="center"><input class="button" type="submit" value="Approve Loan" onclick="myFunction()" required/></td>
				</tr>
			</table>
		</form>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>