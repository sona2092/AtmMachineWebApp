package com.atm.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import com.atm.dao.BankDao;
import com.atm.util.DBUtil;
import com.atm.util.Query;

/**
 * Servlet implementation class DetailsServlet
 */
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); // false -> Do not create a new session
        long account = 0;
        
        if (session != null) {
            account = (long) session.getAttribute("account");
        } else {
            response.sendRedirect("login.jsp"); // Redirect if no session
            return;
        }

        try {
            Connection conn = DBUtil.getConnection();
            String query = Query.select; // Adjust query if needed
            PreparedStatement pstm = conn.prepareStatement(query);
            pstm.setLong(1, account);
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                String accountHolder = rs.getString(2); // Fetch Account Holder Name
                String email = rs.getString(3);
                double balance = rs.getDouble(6);

                // Check if the request is for balance only
                String type = request.getParameter("type");

                if ("balance".equals(type)) {
                    // If the request is to check balance, redirect with balance only
                    response.sendRedirect("balance.jsp?balance=" + balance);
                    return;
                } else {
                    // Otherwise, send full details to account.jsp
                    List<String> accountDetails = new ArrayList<>();
                    accountDetails.add("Account Number: " + rs.getLong(4));
                    accountDetails.add("Account Holder Name: " + accountHolder);
                    accountDetails.add("Email ID: " + email);
                    accountDetails.add("Balance: " + balance);

                    request.setAttribute("accountDetails", accountDetails);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
                    dispatcher.forward(request, response);
                    return;
                }
            } else {
                System.out.println("No records found for account: " + account);
            }

            pstm.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
