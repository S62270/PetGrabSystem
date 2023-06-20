<%-- 
    Document   : DriverMainpage
    Created on : 18 Jun 2023, 11:32:30 pm
    Author     : MUHAMMAD FAUZUL AZIM BIN IMRAN HAYAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pet Grab Driver</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            .page-content {
                margin-left: 250px;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="DriverNavbar.jsp" %>
        <!-- Page Content -->
        <div class="page-content">
            <div class="container-fluid">
                <h1><img src="../Image/pet grab.png" alt="Logo" class="rounded-circle" width="70px">&nbsp; Pet Grab Driver</h1><hr>
                <p>Welcome to the Pet Grab system. Choose a section from the sidebar to get started.</p>
            </div>
        </div>
    </body>
</html>
