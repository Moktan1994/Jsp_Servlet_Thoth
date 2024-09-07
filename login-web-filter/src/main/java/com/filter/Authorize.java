package com.filter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class Authorize extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");

		if("jack".equalsIgnoreCase(username) && "jill".equalsIgnoreCase(password)) {
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}else {
			//hey I wanted to go below jsp
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}

	}

}
