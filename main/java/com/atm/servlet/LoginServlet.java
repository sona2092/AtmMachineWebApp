package com.atm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.atm.dao.UserDao;
import com.atm.dao.UserDaoImp;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UserDao userDao = new UserDaoImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		long account = Long.parseLong(request.getParameter("account"));
		int upin = Integer.parseInt(request.getParameter("upin"));
//	       String account = request.getParameter("account");
//	       String upin = request.getParameter("upin");

	        if (userDao.isValidUser(account, upin)) {
	            HttpSession session = request.getSession();
	            session.setAttribute("account", account);
	            response.sendRedirect("options.jsp");
	            //System.out.println("Hi - "+username);
	        } else {
	            response.sendRedirect("login.jsp?error=1");
	        	System.out.println("Error!!!");
	        }
	}

}
