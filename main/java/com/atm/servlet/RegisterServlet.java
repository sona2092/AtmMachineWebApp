package com.atm.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.atm.dao.User;
import com.atm.dao.UserDao;
import com.atm.dao.UserDaoImp;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UserDao userDao = new UserDaoImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        long account = Long.parseLong(request.getParameter("account"));
		int upin = Integer.parseInt(request.getParameter("upin"));

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setAccount(account);
        user.setUpin(upin);
        
		//UserDao userDao = new UserDaoImpl();
        if (userDao.addUser(user)) {
            response.sendRedirect("login.jsp?registration=success");
        } else {
            response.sendRedirect("register.jsp?error=1");
        }
	}

}
