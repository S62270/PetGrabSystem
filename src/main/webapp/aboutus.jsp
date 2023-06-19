<%-- 
    Document   : aboutus
    Created on : 18 Jun 2023, 1:04:20 am
    Author     : yoonj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <style>
            
            .card-img-top {
                object-fit: cover;
                height: 100%;
                width: 100%;
            }
            .custom-img {
    height: 400px; /* Adjust the height to your desired value */
    object-fit: cover;
    width: 100%;
}
            
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <br><br>
        <div class="container">
            <h1>About Us</h1>
            <div class="row">

                <!-- Developer 1 -->
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top custom-img" src="images/niyaz.jpg" alt="Developer 1">
                        <div class="card-body">
                            <h5 class="card-title">Niyaz Aysar Tissen</h5>
                            <p class="card-text">Front-end Developer</p>
                        </div>
                    </div>
                </div>

                <!-- Developer 2 -->
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top custom-img" src="images/azim.jpg" alt="Developer 2">
                        <div class="card-body">
                            <h5 class="card-title">Fauzul Azim</h5>
                            <p class="card-text">Back-end Developer</p>
                        </div>
                    </div>
                </div>

                <!-- Developer 3 -->
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top custom-img" src="images/siew.jpg" alt="Developer 3">
                        <div class="card-body">
                            <h5 class="card-title">Siew King Sam</h5>
                            <p class="card-text">Full-stack Developer</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="mt-4">
                <h3>Our Mission</h3>
                <p>Make easier job for pet owners to take care of their pets.</p>
            </div>

            <div class="mt-4">
                <h3>Our Vision</h3>
                <p>Our vision is to create a world where every pet receives the care and love it deserves. 
                    We strive to be the leading platform that connects pet owners with trusted services, providing convenience, 
                    reliability, and peace of mind.</p>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>


        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
