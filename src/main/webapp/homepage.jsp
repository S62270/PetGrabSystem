<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pet Grab</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <style>
            /* Add custom styles here */
            .jumbotron {
                background-image: url('images/logo.png');
                background-size: cover;
                background-position: center;
                color: white;
                padding: 100px;
            }

            .services {
                background-color: #f5f5f5;
                padding: 50px;
            }

            .services .icon {
                font-size: 48px;
                color: #ff6b6b;
                margin-bottom: 20px;
            }
            .c{
                text-align: center;
            }
            .display-4 {
                font-size: calc(1.475rem + 2.7vw);
                font-weight: 300;
                line-height: 1.2;
                color: black;
            }
            .container1{

            }
        </style>
    </head>
    <body>
        <!-- Navbar -->
        <jsp:include page="navbar.jsp" />
        <!-- End Navbar -->
        <br><br>
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="display-4">Welcome to PetGrab: Your Reliable Pet Taxi Service</h1>
                <p class="lead">Safe and convenient transportation for your furry friends</p>
                <a href="service.jsp" class="btn btn-primary btn-lg">See Our Services</a>
            </div>
        </section>
        <!-- Main content -->
        <br><br>
        <div class="container1">
            <div class="row justify-content-center">
                <div class="col-md-5 text-center">
                    <h2>Why Choose PetGrab?</h2>
                    <ul class="list-group">
                        <li class="list-group-item">Safety First: Your pet's safety is our top priority.</li>
                        <li class="list-group-item">Convenience: Hassle-free online booking system.</li>
                        <li class="list-group-item">Comfortable Travel: Pet-friendly vehicles with climate control.</li>
                        <li class="list-group-item">Licensed and Insured: Fully compliant and insured service.</li>
                        <li class="list-group-item">Experienced and Caring Staff: Passionate pet handlers.</li>
                        <li class="list-group-item">Flexible Service: One-time and recurring transportation options.</li>
                    </ul>
                </div>
            </div>
        </div>
        <br>
        <section id="services" class="services section-bg" style="padding:0px 0px 30px;">
            <div class="container" data-aos="fade-up">

                <div class="section-title c">
                    <h2>Book Now</h2>
                    <p>Book a service and let our driver assist you!</p>
                </div>

                <div class="row">
                    <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-box">
                            <div class="icon"><i class="bx bxl-dribbble"></i></div>
                            <h4>1. Book a service</h4>
                            <p>Find a service you'd like from any shop.</p>
                        </div>
                    </div>

                    <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-file"></i></div>
                            <h4>2. Pet Pickup</h4>
                            <p>Our skilled driver will take your pet and send it to the shop.</p>
                        </div>
                    </div>

                    <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="300">
                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-tachometer"></i></div>
                            <h4>3. Pay With QR</h4>
                            <p>Just scan the QR to pay!</p>
                        </div>
                    </div>

                    <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="400">
                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-layer"></i></div>
                            <h4>4. Track your order!</h4>
                            <p>Keep up with the order and see where's your pet going.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Pricing section -->
        <section class="bg-light py-5">
            <div class="container text-center">
                <h2>Pricing</h2>
                <p>Contact us for a personalized quote based on your requirements.</p>
            </div>
        </section>

        <!-- Contact section -->
        <jsp:include page="footer.jsp"/>

    </body>
</html>
