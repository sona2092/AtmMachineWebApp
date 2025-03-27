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
            <a href=""><img src="./images/left.png" alt=""></a>
        </div>
        <div class="inner-container" style="padding-top: 10px;">
            <h1 style="margin-bottom: 10px;">Make a withdrawal</h1>
            <form action="WithdrawServlet" method="post" id="withdrawForm">
                <input class="form" type="text" name="amount" id="amount" placeholder="Enter amount to withdraw"><br>
                <button class="form-btn" type="submit">Submit</button>
            </form>
        <%-- Display error message if transaction fails or insufficient funds --%>
        <% String error2 = request.getParameter("error");
           if (error2 != null && error2.equals("2")) { %>
            <p style="color: red;">Transaction failed due to insufficient funds.</p>
        <% } %>
            <div class="options">
                <h3 style="margin-left: 440px; margin-bottom: 25px;">Back</h3>
            </div>
        </div>
        <div class="arrow">
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href="options.jsp"><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
    <script>
        document.getElementById("withdrawForm").addEventListener("submit", function(event) {
            localStorage.setItem("showMoneyImage", "true");
        });
    </script>
</body>

</html>