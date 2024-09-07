package com.signup;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class Signup extends HttpServlet{

	List<SignupClass> signupList = new ArrayList<SignupClass>();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");

		SignupClass signupclass = new SignupClass(username, password, gender);
		signupList.add(signupclass);
		req.setAttribute("csignupList", signupList);
		req.setAttribute("message", "Signup is done successfully!");
		//hey I wanted to go below jsp
		req.getRequestDispatcher("signup.jsp").forward(req, resp);

	}

}
