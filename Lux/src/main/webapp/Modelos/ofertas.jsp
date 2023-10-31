<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="models.css" />
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
        <li><a href="../História/historia.html">Sobre</a></li>
        <li><a href="#">Veiculos</a></li>
      </ul>
    </div>
    <div class="right-icons">
      <div class="btn">
        <a href="../LoginPage/login.jsp" class="field profile">
          <i class="bx bx-user-circle profile-icon"></i>
        </a>
      </div>
      <div class="btn">
        <a href="#" class="field globe">
          <i class="bx bx-globe globe-icon"></i>
        </a>
      </div>
      <div class="btn">
        <a href="#" class="field settings">
          <i class="bx bx-cog settings-icon"></i>
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
  <c:forEach var="car" items="${cars}">
    <div class="container">
    <div class="article-card">
      <div class="content">
        <p class="date"><a href="../Carros/TeslaModelS.html" class="click">${carros.name}</p>
        <p class="title">Tesla Model S</p>
      </div>
      <img
        src=""
        alt="Tesla Model S" class="card-image zoomable" /></a>
    </div>
    <div class="article-card">
      <div class="content">
        <p class="date"><a href="../Carros/TeslaModelX.html" class="click">Tesla Model X</p>
        <p class="title">O esportivo elétrico.</p>
      </div>
      <img
        src="https://images.unsplash.com/flagged/photo-1579782647395-2e6fb36a64f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2006&q=80"
        alt="Tesla Model X" class="card-image zoomable" /></a>
    </div>
  </div>
  </c:forEach>

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
          <li><a class="link1" href="/Historia/historia.html">Sobre</a></li>
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