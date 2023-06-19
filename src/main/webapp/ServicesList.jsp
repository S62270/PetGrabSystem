<%-- 
    Document   : ServicesList.jsp
    Created on : 15 Jun 2023, 6:29:40 pm
    Author     : yoonj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendor Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg bg-body-tertiasry bg-success">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">PetGrab</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Get Started!
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="customerForm.jsp">Sign up</a></li>
                                <li><a class="dropdown-item" href="customerForm.jsp">Log in</a></li>
                            </ul>
                        </li>

                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <br><br>
        <!-- Start Content -->
        <div class="container">
            <div class="card">
                <div class="card-body col-md-6">
                    <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Vendor ID</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="services" items="${listServices}">
                            <tr>
                                <td>
                                    <c:out value="${services.id}"/>
                                </td>
                                <td>
                                    <c:out value="${services.vendorId}"/>
                                </td>
                                <td>
                                    <c:out value="${services.name}"/>
                                </td>
                                <td>
                                    <c:out value="${services.description}"/>
                                </td>
                                <td>
                                    <c:out value="${services.price}"/> &nbsp;&nbsp;
                                </td>
                                <td><a href="/PetGrabSystem/ServiceServlet?action=edit&amp;id=${services.id}" class="btn btn-warning">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;<!-- comment -->
                                    <a href="/PetGrabSystem/ServiceServlet?action=delete&amp;id=${services.id}" class="btn btn-secondary">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    </body>
</html>
