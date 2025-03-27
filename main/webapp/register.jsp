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
        <div class="inner-container">
            <h1 style="margin-bottom: 10px;">Register</h1>
            <form action="RegisterServlet" method="post">
                <input class="form" type="text" name="name" id="name" placeholder="Enter your name"><br>
                <input class="form" type="email" name="email" id="email" placeholder="Enter your email"><br>
                <input class="form" type="text" name="account" id="account" placeholder="Enter your account number"><br>
                <input class="form" type="password" name="upin" id="upin" placeholder="Enter your PIN"> <br>
                <button class="form-btn" type="submit">Register</button>
            </form>
         <%-- Display error message if registration fails --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
            <div class="options">
                <h3 style="margin-top: 20px; margin-left: 10px;">Back</h3>
                <h3 style="margin-top: 20px; margin-right: 10px;">Already a user?<br> Login here</h3>
            </div>
        </div>
        <div class="arrow">
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href="login.jsp"><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
</body>

</html>