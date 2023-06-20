<%-- 
    Document   : Authentication
    Created on : 20 Jun 2023, 10:04:51 am
    Author     : MUHAMMAD FAUZUL AZIM BIN IMRAN HAYAT
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Registration</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <!-- CSS styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #555;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer p {
            margin-bottom: 0;
            color: #555;
        }

        .form-footer a {
            color: #4CAF50;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
    <!-- Login Form -->
    <h2>Pet Grab Driver</h2>
    <c:choose>
        <c:when test="${not empty param.showLoginForm}">
            <form id="login-form" action="DriverController?action=login" method="POST">
                <h3>Login</h3>
                <div class="mb-3">
                    <label for="login-username" class="form-label">Username</label>
                    <input type="text" id="login-username" name="username" class="form-control" placeholder="Enter your username" required>
                </div>

                <div class="mb-3">
                    <label for="login-password" class="form-label">Password</label>
                    <input type="password" id="login-password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>

                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </c:when>
        
    </c:choose><br>

    <!-- Registration Form -->
    <h2 id="reg-form" style="display: none;">Registration</h2>
    <c:choose>
        <c:when test="${not empty param.showRegistrationForm}">
            <form id="registration-form" action="DriverController?action=insert" method="POST">
                <h3>Registration</h3>
                <div class="mb-3">
                    <label for="reg-username" class="form-label">Username</label>
                    <input type="text" id="reg-username" name="username" class="form-control" placeholder="Choose a username" required>
                </div>

                <div class="mb-3">
                    <label for="reg-password" class="form-label">Password</label>
                    <input type="password" id="reg-password" name="password" class="form-control" placeholder="Choose a password" required>
                </div>

                <div class="mb-3">
                    <label for="reg-name" class="form-label">Name</label>
                    <input type="text" id="reg-name" name="name" class="form-control" placeholder="Enter your name" required>
                </div>

                <div class="mb-3">
                    <label for="reg-email" class="form-label">Email</label>
                    <input type="email" id="reg-email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>

                <div class="mb-3">
                    <label for="reg-address" class="form-label">Address</label>
                    <input type="text" id="reg-address" name="address" class="form-control" placeholder="Enter address" required>
                </div>

                <div class="mb-3">
                    <label for="reg-phone" class="form-label">Phone</label>
                    <input type="text" id="reg-phone" name="phonenum" class="form-control" pattern="[0-9]{11,12}" placeholder="Enter phone number" required>
                </div>

                <div class="mb-3">
                    <label for="reg-noplate" class="form-label">Vehicle Plate</label>
                    <input type="text" id="reg-noplate" name="noplate" class="form-control" placeholder="Enter Vehicle plate" required>
                </div>

                <button type="submit" class="btn btn-success">Register</button>
            </form>
        </c:when>
        
    </c:choose>

    <div class="form-footer">
        <p>Not registered? <a href="#" onclick="location.href='?showRegistrationForm=true'">Create an account</a></p>
        <p>Already have an account? <a href="#" onclick="location.href='?showLoginForm=true'">Login</a></p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
