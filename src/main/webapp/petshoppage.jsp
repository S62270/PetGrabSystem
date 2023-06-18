<%-- 
    Document   : petshoppage
    Created on : 19 Jun 2023, 1:25:35 am
    Author     : yoonj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <br><br>
        <section id="portfolio-details" class="portfolio-details">
            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-8">
                        <div class="portfolio-details-slider swiper">
                            <div class="swiper-wrapper align-items-center">
                                <div class="swiper-slide">
                                    <img src="PetGrabSyste/src/main/webapp/images/logo.png" alt="sini">
                                </div>
                            </div>                           
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="portfolio-info">
                            <h3><c:out value='${pet.shopname}'/></h3>
                            <p><c:out value='${pet.shopaddress}'/></p>

                            <p></p>

                            <hr>

                            <hr>

                            <p><strong>Service</strong></p>        
                            <ul>
                                <c:forEach var="serv" items="${service}">
                                    <li> <c:out value="${serv.description}"/>&nbsp;&nbsp;&nbsp;&nbsp;RM<c:out value="${serv.price}"/></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <div class="portfolio-description">
                            <p>Contact Shop : <c:out value='${pet.phonenum}'/></p>
                        </div>
                    </div>

                </div>

            </div>
        </section>
    </body>
</html>
