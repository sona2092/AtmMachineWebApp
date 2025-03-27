<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, com.atm.dao.BankDao" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM Machine</title>
    <link rel="icon" type="image/svg+xml" href="./images/atm.png" />
    <link rel="stylesheet" href="style.css">
</head>
  <body>
<%
    // Retrieve session object
    HttpSession session1 = request.getSession(false);

    if (session1 != null && session1.getAttribute("account") != null) {
        long account = (long) session1.getAttribute("account");

        // Fetch account holder name using DAO method
        String accountHolderName = BankDao.getAccountHolderName(account);
%>
    <div class="outer-container">
        <div class="arrow">
            <a href="change.jsp"><img src="./images/left.png" alt=""></a>
            <a href="DetailsServlet?type=balance"><img src="./images/left.png" alt=""></a>
            <a href="DetailsServlet"><img src="./images/left.png" alt=""></a>
        </div>
        <div class="inner-container" style="padding-top: 10px;">
            <h1 style="margin-bottom: 10px;">Hello, <%= accountHolderName %>!!</h1>
            <div class="options">
                <div class="left-menu">
                    <h3>Change PIN</h3>
                    <h3>Check balance</h3>
                    <h3>Check account details</h3>
                </div>
                <div class="right-menu">
                    <h3>Make a deposit</h3>
                    <h3>Make a withdrawal</h3>
                    <h3>Exit</h3>
                </div>
            </div>
        </div>
        <div class="arrow">
            <a href="deposit.jsp"><img src="./images/right.png" alt=""></a>
            <a href="withdraw.jsp"><img src="./images/right.png" alt=""></a>
            <a href="LogoutServlet"><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>