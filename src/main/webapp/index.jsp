<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background:rgb(236, 255, 220);
	color: #fff;
	text-align: center;
	padding-top: 100px;
}

.container {

	background-color: #fff;
	padding: 20px;
	border-radius: 15px;
	display: inline-block;
	box-shadow: 0px 0px 10px #aaa;
}

h2 {
	margin-top: 20px;
	margin-bottom: 30px;
	color: black;
}

.btn {
	width: 99%;
	background-color: #2196F3;
	color: white;
	padding: 10px;
	font-size: 16px;
	font-weight: 600;
	margin: 10px 0; /* space above and below */
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.btn:hover {
	background-color: #0b7dda;
}

.btn1 {
	width: 99%;
	background-color: rgb(0, 128, 0);
	color: white;
	padding: 10px;
	font-size: 16px;
	font-weight: 600;
	margin: 10px 0; 
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.btn1:hover {
	background-color: #45a049;
}
</style>

</head>
<body>

	<div class="container">
		<h2>Welcome to User Management App</h2>
		<form action="login.jsp" method="get" style="display: inline;">
			<button class="btn">Login</button>
		</form>
		<form action="register.jsp" method="get" style="display: inline;">
			<button class="btn1">Register</button>
		</form>
	</div>
	
</body>
</html>