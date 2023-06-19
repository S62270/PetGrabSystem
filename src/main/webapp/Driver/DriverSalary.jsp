<%-- 
    Document   : DriverSalary
    Created on : 19 Jun 2023, 12:51:33 am
    Author     : MUHAMMAD FAUZUL AZIM BIN IMRAN HAYAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <style>
            body {
                background-color: #f8f9fa;
                font-family: Arial, sans-serif;
            }

            .table {
                margin-top: 20px;
            }

            p {
                font-size: 16px;
                font-weight: bold;
            }

            h3 {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="DriverNavbar.jsp" %>
        <div class="page-content">
            <div class="container-fluid">
                <h1><img src="../Image/pet grab.png" alt="Logo" class="rounded-circle" width="70px">&nbsp; Pet Grab Driver</h1>
                <br>
                <p>Driver Salary Counter</p>
                <table class="table table-bordered table-hover">
                    <thead class="thead-dark">
                    <th>Bil</th>
                    <th>Job</th>
                    <th>Total (RM)</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Pet Groom</td>
                            <td>20</td>
                        </tr>
                    </tbody>
                </table>
                <small>Salary = (Bil X 4.5)</small>
                <br><br><br>
                <h3>Salary :</h3>
            </div>
        </div>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript -->

    </body>
</html>

