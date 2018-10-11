
<%@include file="../template/header.jsp" %>

<div class="container">

    <div class="bg-faded p-4 my-4">
        <!-- Image Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block img-fluid w-100" src="../img/penne.jpg" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-shadow">Penne</h3>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid w-100" src="../img/spaghetti.jpg" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-shadow">Spaghetti</h3>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid w-100" src="../img/fusilli.jpg" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-shadow">Fusilli</h3>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid w-100" src="../img/talharim.jpg" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-shadow">Talharim</h3>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Próximo</span>
            </a>
        </div>
        <!-- Welcome Message -->
        <div class="text-center mt-4">
            <div class="text-heading text-muted text-lg">Nossos Melhores Pratos</div>
            <h1 class="my-2">Seja Bem - Vindo</h1>
        </div>
    </div>

    <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">
            <strong>Cia do Macarrão</strong>
        </h2>
        <hr class="divider">
        <img class="img-fluid float-left mr-4 d-none d-lg-block" src="" alt="">

        <p>Uma receita tradicional italiana deixada de herança para os netos de um casal da década de 50.</p>
        <p>Aqui você encontra qualidade e bom gosto, além de uma gama de variedades que te farão se sentir num típico vilarejo da Itália.</p>
        <p>Venha desfrutar do mais novo restaurante temático, onde a arte de servir bem é o nosso lema.</p>

    </div>


</div>
<!-- /.container -->



<%@include file="../template/footer.jsp" %>



