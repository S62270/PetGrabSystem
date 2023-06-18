<%-- 
    Document   : service
    Created on : 18 Jun 2023, 8:18:23 pm
    Author     : yoonj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <br><br>
        <div class="container">
            <h1>Pick a shop</h1>
            <div class="container">
                <div class="row">                   
                    <div class="col-md-4" >
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Vendor 1</h5>
                                <p class="card-text">Description of Vendor 1</p>
                            </div>
                        </div>
                    </div>
                    <!-- Add more vendor cards as needed -->
                </div>
            </div>
        </div>
    </body>
</html>
