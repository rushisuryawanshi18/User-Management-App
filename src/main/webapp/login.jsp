<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>User Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: rgb(236, 255, 220);
            padding: 40px;
        }
        .container {
            background: #fff;
            padding: 25px 30px;
            width: 600px;
            margin: auto;
            border-radius: 5px;
            box-shadow: 0px 0px 10px #aaa;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type=email], input[type=password] {
            width: 95%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type=submit] {
            width: 99%;
            background-color: #2196F3;
            color: white;
            padding: 10px;
            font-size: 16px;
			font-weight: 600;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #0b7dda;
        }
        .register-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
	<div class="container">
    <h2>User Login</h2>
    <form action="login" method="post">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <input type="submit" value="Login">
    </form>
    <div class="register-link">
        Don't have an account? <a href="register.jsp">Register here</a>
    </div>
</div>
</body>
</html>