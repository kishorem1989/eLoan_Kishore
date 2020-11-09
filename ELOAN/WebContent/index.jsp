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
	    background-color : WHite;
	    margin: 0;
	    padding: 0;
	    font-family: "SIMPSON";
	}
	h1 {
	    color : #000000;
	    text-align : center;
	    font-family: "SIMPSON";
	}
	form {
		margin-top: 25px;
		padding-top: 50px;
	    width: 500px;
	    margin: 0 auto;
	    background-color : #e7e7e7;
	    
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
<title>eLoan system</title>
</head>
<body>
	
	<div align="center" style="padding-top:200px;">
		<form action="user?action=validate" method="post">
			<table width="100%" border="0">
			<tr><td colspan="2"><H1><u>Welcome To ELOAN Application</u></H1></td></tr>
				<tr>
					<td align="right"><b>Username : </b></td>
					<td><input type="text" name="username" required/></td>
				</tr>
				<tr>
					<td align="right"><b>Password : </b></td>
					<td><input type="password" name="password" required/></td>
			    </tr>
			    <tr>
			    	
			    	<td colspan="2" align="center"><input class="button" type="submit" value="Login" required/><input class="button" type="reset" value="Reset" required/></td>
			    </tr>
			    <tr><td height="50px"></td></tr>
			    <tr>
			    
			    <td colspan="2" align="center" >	New User? - <a href="register.jsp">Register</a></td>
			    </tr>
			</table>
		</form>
	</div>
	
</body>
</html>