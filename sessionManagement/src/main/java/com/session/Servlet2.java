package com.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet2")
public class Servlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		// Getting the Cookies

		Cookie[] cookies = req.getCookies();

		boolean f = false;
		String name = "";
		if (cookies == null) {
			out.println("<h1>You are a new user go to the home page</h1>");
		} else {
			for (Cookie c : cookies) {
				String tname = c.getName();

				if (tname.equals("user_name")) {
					f = true;
					name = c.getValue();
				}

			}
		}
		if (f) {
			out.println("<h1>Hello " + name + "Welcome back to my website");
			out.println("<h1>Thankyou</h1>");
		} else {
			out.println("<h1>You are a new user go to the home page</h1>");
		}

		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
}
