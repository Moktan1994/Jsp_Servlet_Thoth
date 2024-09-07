package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/click")
public class LoginForms extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("username");
		String password = req.getParameter("passcode");

		if(email.equals("raju985@gmail.com")&& password.equals("121212")) {
			resp.sendRedirect("welcome.jsp");
		}else {
			resp.sendRedirect("failed.jsp");
		}

	}
}

