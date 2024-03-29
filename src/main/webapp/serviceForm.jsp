<%-- 
    Document   : serviceForm
    Created on : 17 Jun 2023, 3:15:51 pm
    Author     : Hp
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

                    <c:if test="${vendor ==null}">
                        <form class="form-control mb-3" action="insert">                      
                            <h1>Create Service</h1>
                        </c:if>
                        <c:if test="${vendor !=null}">
                            <form class="form-control mb-3" action="update">                      
                                <h1>Update Service</h1>
                            </c:if>
                                <input type="hidden" name="id">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Service Name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Vendor ID</label>
                                <input type="text" name="vendorId" class="form-control" placeholder="Vendor Id">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Service Name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <input type="text" class="form-control" name="description" placeholder="Service Detail">
                            </div>
                            <div class="mb-3">
                                <label class="form-label ">Price</label>
                                <input type="text" class="form-control" name="price" placeholder="Price Needed">
                            </div>
                                <button type="submit" class="btn btn-success">Save</button>
                                <button type="reset" class="btn btn-success">Cancel</button>
                        </form>

                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    </body>
</html>
