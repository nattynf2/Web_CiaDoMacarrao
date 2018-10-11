<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Trocar URL da API
    String urlApi = "http://localhost:8081";
%>

<!DOCTYPE html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cia Do Macarrão</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="../css/business-casual.css" rel="stylesheet">
    <link href="../css/jquery.growl.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><img src="../img/logo.png">Cia do Macarrão</div>
<div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">Desde 1950 fazendo o melhor macarrão!</div>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
    <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/index.jsp">Página Inicial
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item  px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/cardapio.jsp">Cardápio</a>
                </li>
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/sobre.jsp">Sobre Nós</a>
                </li>
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/contato.jsp">Contato</a>
                </li>
                <li class="nav-item px-lg-4" id="menuLogin">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/login.jsp">Login</a>
                </li>
                <li class="nav-item px-lg-4" id="menuMeusPedidos">
                    <a class="nav-link text-uppercase text-expanded" href="../publico/meusPedidos.jsp">Meus Pedidos</a>
                </li>
                
            </ul>
        </div>
    </div>
</nav>

<!-- URL Acessivel via JavaScript -->
<input type="hidden" id="urlAPI" value="<%=urlApi%>" />
