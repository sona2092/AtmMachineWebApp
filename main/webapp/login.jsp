<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a href="index.html"><img src="./images/left.png" alt=""></a>
        </div>
        <div class="inner-container" style="padding-top: 10px;">
            <h1 style="margin-bottom: 10px;">Login</h1>
            <form action="LoginServlet" method="post">
                <input class="form" type="text" name="account" id="account" placeholder="Enter your account number"><br>
                <input class="form" type="password" name="upin" id="upin" placeholder="Enter your PIN"><br>
                <button class="form-btn" type="submit">Login</button>
            </form>
        <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: lightgreen;">Your Registration is Successful. Please Login.</p>
        <% } %>
            <div class="options">
                <h3 style="margin-top: 80px; margin-left: 10px;">Back</h3>
                <h3 style="margin-top: 80px; margin-right: 10px;">New Here?<br> Please register</h3>
            </div>
        </div>
        <div class="arrow">
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href="register.jsp"><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
</body>

</html>