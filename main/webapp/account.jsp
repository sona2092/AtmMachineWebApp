<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    List<String> accountDetails = (List<String>) request.getAttribute("accountDetails");
%>
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
    <div class="outer-container">
        <div class="arrow">
            <a href=""><img src="./images/left.png" alt=""></a>
            <a href=""><img src="./images/left.png" alt=""></a>
            <a href="options.jsp"><img src="./images/left.png" alt=""></a>
        </div>
        <div class="inner-container" style="padding-top: 10px;">
            <h1 style="margin-bottom: 10px;">Account Details</h1>
            <% if (accountDetails != null && !accountDetails.isEmpty()) { %>
            <% for (String detail : accountDetails) { %>
                <p class="details"><%= detail %></p>
            <% } %>
        <% } else { %>
            <p>No account found.</p>
        <% } %>
            <div class="options">
                <h3 id="backBtn" style="margin-top: 80px; margin-left: 10px;">Back</h3>
                <h3 id="exitBtn" style="margin-top: 80px; margin-right: 10px;">Exit</h3>
            </div>
        </div>
        <div class="arrow">
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href="LogoutServlet"><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
</body>

</html>