<%-- 
    Document   : service
    Created on : 18 Jun 2023, 8:18:23 pm
    Author     : yoonj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <br>
            <div class="container">

                <div class="row">       
                    <c:forEach var="ven" items="${vendor}">
                        <div class="col-md-4" >
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="Customer?action=listPetShopById&id=<c:out value='${ven.shopid}'/>"><c:out value="${ven.shopname}"/></a></h5>
                                    <p class="card-text"><c:out value="${ven.shopaddress}"/></p>
                                </div>
                            </div>
                        </div>
                        <!-- Add more vendor cards as needed -->
                    </c:forEach>
                </div>        
            </div>
        </div>
    </body>
</html>
