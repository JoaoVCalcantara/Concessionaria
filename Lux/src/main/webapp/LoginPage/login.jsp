<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criar Conta</title>

    <link rel="stylesheet" href="/LoginPage/Estilo.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel='stylesheet'>
</head>
<body>

<section class="container forms">
    <c:if test="${sessionScope.clickUser == 'login'}">
        <div class="form login">
            <div class="form-content">
                <header>Login</header>
                <form action="/login" method="post">
                    <h5>${requestScope.message}</h5>
                    <div class="field input-field">
                        <input type="email" class="input" name="username" placeholder="Email" required>
                    </div>
                    <div class="field input-field">
                        <input type="password" class="password" name="password" placeholder="Senha" required>
                        <i class="bx bx-hide eye-icon"></i>
                    </div>
                    <div class="form-link">
                        <a href="#" class="forgot-pass">Esqueceu sua Senha ?</a>
                    </div>
                    <div class="field button-field">
                        <button type="submit">Login</button>
                    </div>
                </form>
                <div class="form-link">
                    <span>Possui uma conta ?<a href="/cadastro" class="link signup-link"> Crie uma conta</a></span>
                </div>
            </div>
            <div class="line"></div>
            <div class="media-options">
                <a href="#" class="field facebook">
                    <i class="bx bxl-facebook facebook-icon"></i>
                    <span>Login com Facebook</span>
                </a>
            </div>
            <div class="media-options">
                <a href="#" class="field google">
                    <img src="https://www.facev.org.br/wp-content/uploads/2021/10/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK.png"
                         alt="" class="google-img">
                    <span>Login com o Google</span>
                </a>
            </div>
        </div>
    </c:if>


    <c:if test="${sessionScope.clickUser == 'cadastro'}">
        <div class="form signup">
            <div class="form-content">
                <header>Cadastro</header>
                <form action="/cadastro" method="post">
                    <h5>${requestScope.message}</h5>
                    <div class="field input-field">
                        <input type="firstName" name="firstName" placeholder="Nome" class="input" required>
                    </div>
                    <div class="field input-field">
                        <input type="lastName" name="lastName" placeholder="Sobrenome" class="input" required>
                    </div>
                    <div class="field input-field">
                        <input type="email" name="email" placeholder="Email" class="input" required>
                    </div>
                    <div class="field input-field">
                        <input type="password" name="password" placeholder="Senha" class="input" required>
                        <i class="bx bx-hide eye-icon"></i>
                    </div>
                    <div class="field input-field">
                        <input type="password" placeholder="Confirmar Senha" class="input">
                        <i class="bx bx-hide eye-icon"></i>
                    </div>
                    <div class="field button-field">
                        <button>Criar</button>
                    </div>
                </form>
                <div class="form-link">
                    <span>Já Possui uma conta?<a href="/login" class="link login-link"> Logue aqui</a> </span>
                </div>
            </div>

            <div class="line"></div>
            <div class="media-options">
                <a href="#" class="field facebook">
                    <i class="bx bxl-facebook facebook-icon"></i>
                    <span>Logue com Facebook</span>
                </a>
            </div>
            <div class="media-options">
                <a href="#" class="field google">
                    <img src="https://www.facev.org.br/wp-content/uploads/2021/10/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK.png"
                         alt="" class="google-img">
                    <span>Logue com o Google</span>
                </a>
            </div>
        </div>
    </c:if>
</section>
<script src="script.js"></script>
</body>
</html>