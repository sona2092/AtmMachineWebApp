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
            <h1 style="margin-bottom: 10px;">Change PIN</h1>
            <form action="ChangeServlet" method="post">
    <div class="password-container">
        <input class="form password-input" type="password" name="opin" id="opin" placeholder="Enter old PIN">
        <span class="toggle-password" onclick="togglePassword('opin', 'eye1')">
            <img id="eye1" src="./images/hidden.png" alt="Show Password">
        </span>
    </div>
    
    <div class="password-container">
        <input class="form password-input" type="password" name="npin" id="npin" placeholder="Enter new PIN">
        <span class="toggle-password" onclick="togglePassword('npin', 'eye2')">
            <img id="eye2" src="./images/hidden.png" alt="Show Password">
        </span>
    </div>

    <button class="form-btn" type="submit">Change</button>
</form>

        <%-- Display message if change Successful --%>
        <% String rs2 = request.getParameter("change");
            if (rs2 != null && rs2.equals("success")) { %>
                <p style="color: lightgreen;">PIN changed successfully!!!</p>
        <% } %>
            <div class="options">
                <h3 style="margin-top: 80px; margin-left: 10px;">Back</h3>
            </div>
        </div>
        <div class="arrow">
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
            <a href=""><img src="./images/right.png" alt=""></a>
        </div>
    </div>
    <div class="output-box">
        <div class="money-box">
            <img class="img-money" src="./images/rupee.png" alt="">
        </div>
    </div>
    <script>
    function togglePassword(inputId, eyeId) {
        const inputField = document.getElementById(inputId);
        const eyeIcon = document.getElementById(eyeId);

        if (inputField.type === "password") {
            inputField.type = "text";
            eyeIcon.src = "./images/visible.png"; // Change to open-eye icon
        } else {
            inputField.type = "password";
            eyeIcon.src = "./images/hidden.png"; // Change to closed-eye icon
        }
    }

    </script>
</body>

</html>