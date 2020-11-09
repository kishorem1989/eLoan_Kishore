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
	    width: 500px;
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
<title>Registration</title>
</head>
<body>

<script>
function myFunction() {
  alert("User registered successfully.\nLogin with new Credentials.");
}
</script>
<hr/>
<div align=center>
	<h2>New User Registration</h2>
	<form action="user?action=registernewuser" method="post">
		<table border="0" >
			<tr>
				<td align="right"><label for="loginid"><b>User Name : </b></label></td>
				<td align="left"><input type="text" id="username" name="username" required></td>
			</tr>
			<tr>
				<td align="right"><label for="password"><b>Password : </b></label></td>
				<td align="left"><input type="text" id="password" name="password" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input class="button" type="submit" value="Register" onclick="myFunction()">
					<input class="button" type="reset" value="Reset">
				</td>
			</tr>
		</table>
	</form>
	</div>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>