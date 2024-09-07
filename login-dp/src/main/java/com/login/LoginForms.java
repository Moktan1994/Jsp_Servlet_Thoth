package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class LoginForms extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String psw = req.getParameter("tempaPassword");

		if(email.equals("raju985@gmail.com")&& psw.equals("123456")) {
			resp.getWriter().println("<h1>Your email and password is correct congratulation</h1>");
		}else {
			resp.getWriter().println("<h1>Your email and password is incorrect try again</h1>");
		}
	}

}
