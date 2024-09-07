package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter("/*")// /* for all the incoming request
public class MyServlet implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest httprequest = (HttpServletRequest)request;
		String path = httprequest.getServletPath();
		if(path.contains("home.jsp")) {
		((HttpServletResponse)response).sendRedirect(httprequest.getContextPath()+"/login1.jsp");
		}else {//go ahead gate is open
			chain.doFilter(request, response);
		}
	}



}
