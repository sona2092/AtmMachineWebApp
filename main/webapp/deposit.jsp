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
            <h1 style="margin-bottom: 2px;">Make a deposit</h1>
            <h4 style="margin-bottom: 10px;">(Please deposit your cash from below)</h4>
            <form action="DepositServlet" method="post" id="depositForm">
                <input class="form" type="text" name="amount" id="amount" placeholder="Enter amount to deposit"><br>
                <button class="form-btn" type="submit">Submit</button>
            </form>
        <%-- Display error message if transaction fails --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Transaction failed. Any money debited will be credited to your account.</p>
        <% } %>
            <div class="options">
                <h3 style="margin-left: 440px; margin-bottom: 47px;">Back</h3>
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
    document.addEventListener("DOMContentLoaded", function () {
        const moneyImage = document.querySelector(".img-money");
        const inputBox = document.getElementById("amount");
        const form = document.getElementById("depositForm");

        let typingTimer; // Timer for detecting when user stops typing
        const typingDelay = 1000; // 1 second delay

        // Detect user typing and start timer
        inputBox.addEventListener("input", function () {
            clearTimeout(typingTimer); // Reset timer on each keystroke

            if (inputBox.value.trim() !== "") {
                typingTimer = setTimeout(() => {
                    moneyImage.style.display = "block";
                    setTimeout(() => {
                        moneyImage.style.opacity = "1"; // Smooth fade-in
                    }, 200);
                }, typingDelay);
            } else {
                hideMoneyImage();
            }
        });

        // Hide image on form submit
        form.addEventListener("submit", function () {
            hideMoneyImage();
        });

        // Function to hide money image with fade-out effect
        function hideMoneyImage() {
            moneyImage.style.opacity = "0";
            setTimeout(() => {
                moneyImage.style.display = "none";
            }, 500);
        }
    });

    </script>
</body>

</html>