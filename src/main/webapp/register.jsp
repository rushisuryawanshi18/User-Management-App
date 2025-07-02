<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f2f2f2;
	padding: 60px;
}

.container {
	background: #fff;
	padding: 20px 30px;
	width: 600px;
	margin: auto;
	border-radius: 5px;
	box-shadow: 0px 0px 10px #aaa;
}

h2 {
	text-align: center;
}

input[type=text], input[type=email], input[type=password] {
	width: 95%;
	padding: 10px;
	margin: 8px 0 15px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type=submit] {
	width: 99%;
	background-color: #4CAF50;
	color: white;
	font-size:90%;
	padding: 10px;
	margin-top: 10px;
	border-color: black;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.login-link {
	text-align: center;
	margin-top: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>User Registration</h2>
		<form action="register" method="post">
			<label for="name">Name</label> <input type="text" id="name"
				name="name" placeholder="Your full name" required> <label
				for="email">Email</label> <input type="email" id="email"
				name="email" placeholder="Your email address" required> <label
				for="password">Password</label> <input type="password" id="password"
				name="password" placeholder="Choose a password" required> <input
				type="submit" value="Register">
		</form>
		<div class="login-link">
			Already registered? <a href="login.jsp">Login here</a>
		</div>
	</div>
</body>
</html>