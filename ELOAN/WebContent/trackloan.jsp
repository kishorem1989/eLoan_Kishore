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
	    width: 700px;
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
<title>Track Loan Application</title>
</head>
<body>
<jsp:include page="headeruser.jsp"/>
	
	<form action="user?action=displaystatus" method="post">
		<h2 align="center">Loan Track Information</h2>
		<table border="0" width="80%">
			<tr>
				<td align="right"><b>Loan Application Number : </b></td>
				<td align="Left"><input type="text" name="applicationNumber" required/></td>
		    </tr>
		    <tr>
		    	<td align="center" colspan="2"><input class="button" type="submit" value="Submit"/> <input class="button" type="Reset" value="Reset"/></td>
		    </tr>
		</table>
	</form>
<jsp:include page="footer.jsp"/>
</body>
</html>