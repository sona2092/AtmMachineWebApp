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
            <a href="options.jsp"><img src="./images/left.png" alt=""></a>
        </div>
        <div class="inner-container" style="padding-top: 10px;">
            <h1 style="margin-bottom: 10px;">Please collect your cash from below.</h1>
            <div class="options">
                <h3 id="backBtn" style="margin-top: 150px; margin-left: 10px;">Back</h3>
                <h3 id="exitBtn" style="margin-top: 150px; margin-right: 10px;">Exit</h3>
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
    <script>
   		document.addEventListener("DOMContentLoaded", function () {
        const moneyImage = document.querySelector(".img-money");

        if (localStorage.getItem("showMoneyImage") === "true") {
            moneyImage.style.opacity = "0"; 
            moneyImage.style.display = "block"; 
            setTimeout(() => {
                moneyImage.style.transition = "opacity 1s ease-in-out"; 
                moneyImage.style.opacity = "1"; 
            }, 500); 
        }

        function hideMoneyImage() {
            localStorage.removeItem("showMoneyImage");
            moneyImage.style.transition = "opacity 1s ease-in-out"; 
            moneyImage.style.opacity = "0"; 
            setTimeout(() => {
                moneyImage.style.display = "none"; 
            }, 1000); 
        }

        document.getElementById("backBtn").addEventListener("click", hideMoneyImage);
        document.getElementById("exitBtn").addEventListener("click", hideMoneyImage);
    });

    </script>
</body>

</html>