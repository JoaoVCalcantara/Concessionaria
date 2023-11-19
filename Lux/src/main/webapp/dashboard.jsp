<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="Dashboard/dashboard.css" rel="stylesheet">
    <link href="Dashboard/style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Lux | Dashboard</title>
</head>
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Lux Dashboard</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search"
           aria-label="Search">
    <div class="navbar-nav">
        <div class="nav-item text-nowrap">
            <a class="nav-link px-3" href="/logout">Sign out</a>
        </div>
    </div>
</header>
<body>
<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3 sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span><c:if
                                test="${sessionScope.loggedUser != null}">
                            <span>${sessionScope.loggedUser}</span>
                        </c:if>
                        </a>
                    </li>
                </ul>
                <hr>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/dashboard.jsp"><span data-feather="home"
                                                                                            class="align-text-bottom"></span>Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin.jsp"><span data-feather="file-text"
                                                                    class="align-text-bottom"></span>New Car</a>
                    </li>
                </ul>
            </div>
        </nav>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2>Cars</h2>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Motor</th>
                        <th>Cílindrada/Autonômia</th>
                        <th>Aceleração</th>
                        <th>Velocidade Máxima</th>
                        <th>Portas</th>
                        <th>Bancos</th>
                        <th>Válvulas/Tração</th>
                        <th>Preço</th>
                        <c:if test="${sessionScope.loggedUser != null}">
                            <th>Action</th>
                        </c:if>
                    </tr>
                    <c:forEach var="car" items="${sessionScope.cars}">
                    <tr>
                    <td>${car.id}</td>
                    <td>${car.name}</td>
                    <td>${car.motor}</td>
                    <td>${car.cil}</td>
                    <td>${car.acel}</td>
                    <td>${car.hp}</td>
                    <td>${car.torque}</td>
                    <td>${car.speed}</td>
                    <td>${car.doors}</td>
                    <td>${car.seats}</td>
                    <td>${car.val}</td>
                    <td>${car.price}</td>
                        <td style="display: flex;">
                            <form action="/delete-car" method="post" style="margin-right: 10px;">
                                <input type="hidden" id="delete-id" name="id" value="${car.id}">
                                <button type="submit" class="btn btn-primary">Delete</button>
                            </form>
                            <form action="/admin-detalhes-admin" method="get">
                                <input type="hidden" id="update-id" name="id" value="${car.id}">
                                <button type="submit" class="btn btn-secondary">Atualizar</button>
                            </form>
                        </td>
                    </c:forEach>
                </table>
            </div>
        </main>
    </div>
</div>
<script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="Downloads/assets/js/feather.min.js"></script>
<script src="Downloads/assets/js/dashboard.js"></script>
</body>
</html>