package com.bitwise.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginValidationFilter
 */
@WebFilter("/LoginValidationFilter")
public class LoginValidationFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginValidationFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		PrintWriter out=response.getWriter();
		String userName = request.getParameter("name");
		String password = request.getParameter("password");
		
		if(userName.equals("rathore") && password.equals("neha52"))
		{
			HttpSession session = req.getSession(true);
			chain.doFilter(request, response);
		}
		else
		{
			response.setContentType("text/html");
			out.println("Login Unsuccessful:::\nPlease try again");
			request.getRequestDispatcher("LoginPage.jsp").include(request, response);
			//res.sendRedirect("LoginPage.html");
	
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
