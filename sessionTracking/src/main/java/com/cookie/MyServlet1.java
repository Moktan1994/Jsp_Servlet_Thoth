package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet1")
public class MyServlet1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		  String name = req.getParameter("name");

		  out.println("<h1>Hello "+name+ "Welcome to my website");
		  out.println("<h1><a href='servlet2'>Go to Servlet2</h1>");

		  //Creating a Cookies
		  Cookie c = new Cookie("user_name", name);
		  resp.addCookie(c);
	}

}
