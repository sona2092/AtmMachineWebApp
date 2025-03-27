package com.atm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import com.atm.dao.BankDao;

/**
 * Servlet implementation class ChangeServlet
 */
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static BankDao bankDao = new BankDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		int npin = Integer.parseInt(request.getParameter("npin"));
		HttpSession session = request.getSession(false); // false -> Do not create a new session
		long account = 0;
		if (session != null) {
			account = (long) session.getAttribute("account");
		} else {
		    response.sendRedirect("login.jsp"); // No session found
		}
//		System.out.println(account);
		try {
			if(bankDao.changePIN(account, npin))
	            response.sendRedirect("change.jsp?change=success");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
