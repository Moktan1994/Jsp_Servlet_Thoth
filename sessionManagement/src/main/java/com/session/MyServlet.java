package com.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet1")
public class MyServlet extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter print = resp.getWriter();
		String name = req.getParameter("name");

		print.println("<h1>Hello "+name+" welcome to the my page</>");
		print.println("<h1 <a href='servlet2'></a>>Go to Servlet2</h1>");

		//creating a cookies
		Cookie c = new Cookie("user_name", name);
		resp.addCookie(c);

		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
}
