<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="Carros/Carros.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <title>Tesla Model X</title>
</head>

<body>
    <nav>
        <p class="logo">LUX</p>
        <div class="links">
            <ul class="nav-itens">
                <li><a href="../index.jsp">Home</a></li>
                <li><a href="/Historia/historia.jsp">Sobre</a></li>
                <li><a href="/find-all-cars">Veiculos</a></li>
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
    <div class="wrapper">
        <div class="model">
            <div class="content">
                <div class="slides">
                    <input type="radio" name="slide" id="slide1" checked>
                    <input type="radio" name="slide" id="slide2">
                    <input type="radio" name="slide" id="slide3">
                    <input type="radio" name="slide" id="slide4">
                    <input type="radio" name="slide" id="slide5">

                    <div class="slide s1">
                        <img src="https://digitalassets.tesla.com/tesla-contents/image/upload/h_1800,w_2880,c_fit,f_auto,q_auto:best/Model-X-Interior-Hero-Desktop-LHD"
                            alt="Interior Tesla Model X">
                    </div>
                    <div class="slide">
                        <img src="https://images.unsplash.com/photo-1683743407083-90b217fad319?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"
                            alt="Interior Tesla Model X">
                    </div>
                    <div class="slide">
                        <img src="https://images.unsplash.com/photo-1633371575203-7278bfed3f52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
                            alt="Tesla Model X">
                    </div>
                    <div class="slide">
                        <img src="https://images.unsplash.com/photo-1645582380413-0af38269d408?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"
                            alt="Tesla Model X">
                    </div>
                    <div class="slide">
                        <img src="https://digitalassets.tesla.com/tesla-contents/image/upload/h_1800,w_2880,c_fit,f_auto,q_auto:best/Model-X-Utility-Hero-Desktop-LHD"
                            alt="Tesla Model X">
                    </div>
                    <div class="navigation">
                        <label class="bar" for="slide1"></label>
                        <label class="bar" for="slide2"></label>
                        <label class="bar" for="slide3"></label>
                        <label class="bar" for="slide4"></label>
                        <label class="bar" for="slide5"></label>
                    </div>
                </div>
            </div>
        </div>
        <div class="my-div">
            <h2>Informacoes do Carro</h2>
            <div class="car">
                <h3>Motor: ${car.motor}</h3>
                <h3>Potencia: ${car.hp}</h3>
                <h3>Portas: ${car.doors}</h3>
                <h3>Autonomia: ${car.cil}</h3>
                <h3>Torque: ${car.torque}</h3>
                <h3>Lugares: ${car.seats}</h3>
                <h3>Aceleracao: ${car.acel}</h3>
                <h3>Velocidade Máxima: ${car.speed}</h3>
                <h3>Tracao: ${car.val}</h3>
                <div class="car-img">
                    <img src="https://digitalassets.tesla.com/tesla-contents/image/upload/f_auto,q_auto/Model-X-Performance_Desktop-LHD.jpg"
                        alt="Tesla Model X">
                </div>
            </div>
            <div class="toast">
                <div class="toast-content">
                    <i class="fas fa-solid fa-check check"></i>

                    <div class="message">
                        <span class="text text-1">Parabens!!</span>
                        <span class="text text-2">Carro Alugado com sucesso, entraremos em contato via e-mail dentro dos
                            proximos dias.</span>
                    </div>
                </div>
                <i class="fa-solid fa-xmark close"></i>
                <div class="progress active"></div>
            </div>
            <button onclick="showToast()">Alugar por R$${car.price}</button>
        </div>
    </div>
    <footer>
        <div class="secoes">
            <section class="informacoes">
                <div class="info1">
                    <li><a class="link1" href="../index.jsp">Home</a></li>
                </div>
                <div class="info2">
                    <li><a class="link1" href="/find-all-cars">Veiculos</a></li>
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
</body>
<script src="Carros/script.js"></script>
</html>

