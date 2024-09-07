package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uname = req.getParameter("username");
		String pword = req.getParameter("password");

		if(uname.equalsIgnoreCase("raju985")&& pword.equalsIgnoreCase("1212")) {
			req.getRequestDispatcher("success.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("failed.jsp").forward(req, resp);
		}
	}

}
