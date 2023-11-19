
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="Modelos/models.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
  <title>Veículos</title>
</head>

<body>
  <nav>
    <p class="logo">LUX</p>
    <div class="links">
      <ul class="nav-itens">
        <li><a href="../index.jsp">Home</a></li>
        <li><a href="/Historia/historia.jsp">Sobre</a></li>
        <li><a href="#">Veiculos</a></li>
      </ul>
    </div>
    <div class="right-icons">
      <div class="btn">
        <a href="../LoginPage/login.jsp" class="field profile">
          <i class="bx bx-user-circle profile-icon"></i>
        </a>
      </div>
    </div>
  </nav>
  <section class="carros">
    <div class="carro1">
      <img src="https://images2.alphacoders.com/115/1154167.jpg" alt="Tesla Model S">
    </div>
  </section>

  <h2 class="models">Modelos</h2>

  <div class="container">
    <c:forEach var="car" items="${sessionScope.cars}">
      <form action="/detalhes-carro" method="get">
        <button type="submit" class="article-card">
          <div class="content">
            <input type="hidden" id="id" name="id" value="${car.id}">
            <p class="date" class="click">${car.name}</p>
            <p class="title">${car.title}</p>
          </div>
          <img src="${pageContext.request.contextPath}/img/${car.image}" alt="${car.name}" class="card-image zoomable"/>
        </button>
      </form>
    </c:forEach>
  </div>

  <footer>
    <div class="secoes">
      <section class="informacoes">
        <div class="info1">
          <li><a class="link1" href="../index.jsp">Home</a></li>
        </div>
        <div class="info2">
          <li><a class="link1" href="#">Veiculos</a></li>
        </div>
        <div class="info3">
          <li><a class="link1" href="/Historia/historia.jsp">Sobre</a></li>
        </div>
      </section>
      <hr class="divisao">
      <section class="contato">
        <ul class="redes-sociais">
          <a href="#"><i class='bx bxl-instagram'></i></a>
        </ul>
        <ul class="redes-sociais">
          <a href="#"><i class='bx bxl-github'></i></a>
        </ul>
        <ul class="redes-sociais">
          <a href="#"><i class='bx bxl-facebook'></i></a>
        </ul>
        <ul class="redes-sociais">
          <a href="#"><i class='bx bxl-twitter'></i></a>
        </ul>
      </section>
      <section class="creditos">
        <p>© LUX</p>
      </section>
    </div>
  </footer>
  </div>
  <script src="script.js"></script>
</body>
</html>