<%-- 
    Document   : customerLogin
    Created on : 15 Jun 2023, 7:21:12 pm
    Author     : yoonj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- End Navbar -->
        <nav class="navbar navbar-expand-lg bg-body-tertiasry bg-primary ">
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
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <c:if test="${employee != null}">
                        <form action="update" >
                        </c:if>
                            
                        <c:if test="${employee == null}">
                            <form action="insert" >
                            </c:if>      
                                
                                <h2>
                                    <c:if test="${employee !=null}">
                                        Edit Employee
                                    </c:if>
                                        <c:if test="${employee == null}">
                                        Add New Employee
                                    </c:if>
                                </h2>
                            
                            <c:if test="${employee !=null}">
                                <input type="hidden" name="id" value="<c:out value='${employee.id}'/>"/> 
                            </c:if>
                            <fieldset class="form-group">
                                <label>Employee Name</label>
                                <input type="text" value="<c:out value='${employee.name}' />" class="form-control" name="name" required="required">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>Employee Email</label>
                                <input type="text" value="<c:out value='${employee.email}' />" class="form-control" name="email">
                            </fieldset>

                            <fieldset class="form-group">
                                <label>Employee Position</label>
                                <input type="text" value="<c:out value='${employee.position}' />" class="form-control" readonly>
                                <input list="positionList" id="position" class="form-control" name="position">
                                <datalist id="positionList">
                                    <option value="Manager">
                                    <option value="Head of Dept">
                                    <option value="Supervisor">
                                    <option value="Director">
                                </datalist>
                            </fieldset>
                            <button type="submit" class="btn btn-success">Save</button>
                        </form>
                </div>
            </div>
        </div>
    </body>
</html>
