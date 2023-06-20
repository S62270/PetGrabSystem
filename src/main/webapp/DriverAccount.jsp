<%-- 
    Document   : DriverAccount
    Created on : 19 Jun 2023, 12:51:45 am
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
                margin: 20px;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="DriverNavbar.jsp" %>
        <!-- Page Content -->
        <div class="page-content">
            <h3>Account Management</h3>
            <hr>
            <div class="container my-4">
                <div class="card my-4">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h3 class="card-title">Account Information</h3>
                            <a href="#" class="btn btn-primary">
                                <i class="fas fa-edit"></i> Edit
                            </a>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">Driver ID: ${account.driverid}</li>
                            <li class="list-group-item">Username: ${account.username}</li>
                            <li class="list-group-item">Name: ${account.name}</li>
                            <li class="list-group-item">Email: ${account.email}</li>
                            <li class="list-group-item">Address: ${account.address}</li>
                            <li class="list-group-item">Phone: ${account.phonenum}</li>
                            <li class="list-group-item">License Plate: ${account.noplate}</li>
                            <li class="list-group-item">Status: ${account.status}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Scripts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
