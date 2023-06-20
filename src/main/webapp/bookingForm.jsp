<%-- 
    Document   : bookingForm
    Created on : 20 Jun 2023, 4:38:43 pm
    Author     : yoonj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <br><br>
        <div class="container col-md-5">
            <div class="card-body">
                <form class="form-control mb-3" action="CustomerServlet">
                    <div class="mb-3">
                         <input type="hidden" name="action" value="book">
                        <input type="hidden" name="custid" value="<c:out value='${customer.custid}'/>">
                        <input type="hidden" name="shopid" value="<c:out value='${shopid}'/>">
                        <h1>Booking Order</h1>
                        <label class="form-label">Pet Name</label>
                        <input type="text" name="petname" class="form-control" placeholder="Your pet name">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Pet Age</label>
                        <input type="number" class="form-control" name="petage" min="0" max="30">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Pet Gender</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="petgender" value="Male">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Male
                            </label>    
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="petgender" value="Female">
                            <label class="form-check-label" for="flexRadioDefault2">
                                Female
                            </label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Purpose Of Visit</label>
                        <textarea class="form-control" name="purposeofvisit" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Date</label>
                        <input type="date" class="form-control" name="date">
                    </div>
                    <div class="mb-3">
                        <label for="appt">Choose a time for your order:</label>

                        <input type="time" id="time" name="time"
                               min="09:00" max="18:00" required>

                        <small>Service hours are 9am to 6pm</small>
                    </div>
                        <input type="hidden" name="status" value="Pending">
                    <button type="submit" class="btn btn-success">Save</button>
                    <button type="reset" class="btn btn-success">Cancel</button>
                </form>
            </div>
        </div>
    </body>
</html>
