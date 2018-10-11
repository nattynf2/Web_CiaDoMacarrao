<%--
  Created by IntelliJ IDEA.
  User: FAMILIA FREITAS
  Date: 22/04/2018
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../template/header.jsp" %>

<div class="container">

    <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Entre em Contato Conosco
        </h2>
        <hr class="divider">
        <div class="row">
            <div class="col-lg-8">
                <div class="embed-responsive embed-responsive-16by9 map-container mb-4 mb-lg-0">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.5596435707685!2d-46.582960384905704!3d-23.58425398467159!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5c13088477c9%3A0xd6a589d795a5c9d6!2sAv.+Professor+Luiz+Ign%C3%A1cio+Anhaia+Mello%2C+1363+-+Vila+Prudente%2C+S%C3%A3o+Paulo+-+SP%2C+03155-000!5e0!3m2!1spt-BR!2sbr!4v1511222080286" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-lg-4">
                <h5 class="mb-0">Telefone:</h5>
                <div class="mb-4">(11) 4152-5452</div>
                <h5 class="mb-0">E-mail:</h5>
                <div class="mb-4">
                    <a href="mailto:name@example.com">contato@ciadomacarrao.com.br</a>
                </div>
                <h5 class="mb-0">Endereço:</h5>
                <div class="mb-4">
                    Av. Professor Luiz Ignácio Anhaia Mello, 1363
                    <br>
                    Vila Prudente, São Paulo - SP, 03155-000
                </div>
            </div>
        </div>
    </div>

    <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">
            <strong>Contato</strong>
        </h2>
        <hr class="divider">
        <form>
            <div class="row">
                <div class="form-group col-lg-4">
                    <label class="text-heading">Nome</label>
                    <input type="text" class="form-control" required>
                </div>
                <div class="form-group col-lg-4">
                    <label class="text-heading">E-mail</label>
                    <input type="email" class="form-control" required>
                </div>
                <div class="form-group col-lg-4">
                    <label class="text-heading">Telefone</label>
                    <input type="tel" class="form-control" required>
                </div>
                <div class="clearfix"></div>
                <div class="form-group col-lg-12">
                    <label class="text-heading">Mensagem</label>
                    <textarea class="form-control" rows="6" required></textarea>
                </div>
                <div class="form-group col-lg-12">
                    <button type="submit" class="btn btn-secondary">Enviar</button>
                </div>
            </div>
        </form>
    </div>

</div>
<!-- /.container -->

<!-- Zoom when clicked function for Google Map -->
<script>
    $('.map-container').click(function () {
        $(this).find('iframe').addClass('clicked')
    }).mouseleave(function () {
        $(this).find('iframe').removeClass('clicked')
    });
</script>

<%@include file="../template/footer.jsp" %>