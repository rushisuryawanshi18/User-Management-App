package com.userapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;

import com.userapp.util.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String myname = req.getParameter("name");
		String myemail = req.getParameter("email");
		String mypass = req.getParameter("password");

		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");

		try {
			Connection con = DBConnection.getConnection();
			String sql = "INSERT INTO user(name, email, password) VALUES (?, ?, ?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, myname);
			stmt.setString(2, myemail);
			stmt.setString(3, mypass);

			int rows = stmt.executeUpdate();

			if (rows > 0) {
				out.println("<h2 style=\"color:green;\">Registration Successful !</h2>");
			} else {
				out.println("<h2 style=\"color: red;\">Registration failed</h2>");
			}
		} catch (SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
			out.println("<h3 style=\'color:blue;\'>User already exist!</h3>");

		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h3 style=\"color: red;\">Error occurred!</h3>");
			out.println("<p><a href='register.jsp'>Try once..</a></p>");
		}
		out.println("<p><a href='login.jsp'></a></p>");

	}
}
