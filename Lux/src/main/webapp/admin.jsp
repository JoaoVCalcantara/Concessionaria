<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="Dashboard/dashboard.css" rel="stylesheet">
<link href="Dashboard/style.css" rel="stylesheet">
<title>Lux | Registro</title>

<body>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Lux Dealership</a>
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
                        <a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span> <c:if
                                test="${sessionScope.loggedUser != null}">
                            <span>${sessionScope.loggedUser}</span>
                        </c:if>
                        </a>
                    </li>
                </ul>
                <hr>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/dashboard.jsp"><span data-feather="home" class="align-text-bottom">Home</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin.jsp"><span data-feather="file-text" class="align-text-bottom">New Car</span></a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2>Registrar Carros</h2>
            <div class="table-responsive">
                <form action="/create-car" method="post" enctype="multipart/form-data" class="container">
                    <input type="hidden" id="id" name="id" value="${car.id}">

                    <div class="mb-3">
                        <label class="form-label" for="car-name">Nome do Carro</label>
                        <input class="form-control" type="text" name="car-name" id="car-name" value="${car.name}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="motor">Motor</label>
                        <input class="form-control" type="text" name="motor" id="motor" value="${car.motor}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="cil">Cilíndrada</label>
                        <input class="form-control" type="text" name="cil" id="cil" value="${car.cil}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="acel">Aceleração</label>
                        <input class="form-control" type="text" name="acel" id="acel" value="${car.acel}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="hp">Potência</label>
                        <input class="form-control" type="text" name="hp" id="hp" value="${car.hp}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="torque">Torque</label>
                        <input class="form-control" type="text" name="torque" id="torque" value="${car.torque}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="speed">Velocidade Máxima</label>
                        <input class="form-control" type="text" name="speed" id="speed" value="${car.speed}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="doors">Portas </label>
                        <input class="form-control" type="text" name="doors" id="doors" value="${car.doors}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="seats">Bancos</label>
                        <input class="form-control" type="text" name="seats" id="seats" value="${car.seats}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="val">Válvulas/Tração</label>
                        <input class="form-control" type="text" name="val" id="val" value="${car.val}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="price">Preço</label>
                        <input class="form-control" type="text" name="price" id="price" value="${car.price}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="price">Descrição</label>
                        <input class="form-control" type="text" name="title" id="title" value="${car.title}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="image">Escolher arquivo</label>
                        <input class="form-control" type="file" name="image" id="image" value="${car.image}">
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <button class="btn btn-primary" type="submit">${car.id != null && !car.id.isEmpty() ? 'Atualizar' : 'Registrar'}</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</div>
<script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="Downloads/assets/js/feather.min.js"></script>
<script src="Downloads/assets/js/dashboard.js"></script>
</body>
</html>