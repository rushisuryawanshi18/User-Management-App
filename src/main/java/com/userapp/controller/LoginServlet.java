package com.userapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.userapp.util.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String myemail = req.getParameter("email");
		String mypass = req.getParameter("password");

		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");

		try {
			Connection con = DBConnection.getConnection();
			String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, myemail);
			stmt.setString(2, mypass);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				out.println("<h2>Welcome, " + myemail + "!</h2>");
			} else {
				out.println("<h3>Invalid login!</h3>");
				out.println("<p><a href='login.html'>Try again</a></p>");
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h3>Error occurred!</h3>");
		}

		out.println("<p><a href='register.jsp'>Register</a></p>");
	}

}
