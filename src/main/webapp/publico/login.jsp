<%--
  Created by IntelliJ IDEA.
  User: FAMILIA FREITAS
  Date: 08/04/2018
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../template/header.jsp" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Login</title>
</head>

<script type="text/javascript">
    function validaCampo()
    {

        if (document.cadastro.login.value == "")
        {
            alert("O campo login é obrigatório!");
            return false;
        }

        if (document.cadastro.senha.value == "")
        {
            alert("Digite sua senha!");
            return false;
        }

        return true;
    }
<!-- Fim do JavaScript que validará os campos obrigatórios! -->
</script>

<div class="container">

    <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">
            <strong>Login</strong>
        </h2>
        <hr class="divider">

        <center><img class="img-fluid mb-4 mb-lg-0" src="../img/macarrao_login.png" alt=""></center>

        <div class="row">
            <div class="col-md-4 offset-md-4">
                <form id="cadastro"  name="cadastro" method="post" action="" onsubmit="return validaCampo(); return false;">
                        <div class="form-group">
                            <label>Login:*</label>
                            <input name="login" class="form-control form-control-sm" type="text" id="login" maxlength="12" />
                        </div>
                        <div class="form-group">
                            <label>Senha:*</label>
                            <input name="senha" class="form-control form-control-sm" type="password" id="senha" maxlength="12" />
                        </div>
                        <center>
                            <input class="btn btn-primary" name="acessar" type="button" id="acessar" value="Entrar" />
                            <a class="btn btn-primary" href="cadastro.jsp">Cadastrar</a>
                        </center>
                    </form>
                </div>
            </div>
            </div>
        </div>

    <%@include file="../template/footer.jsp" %>

    <script>

        $(function () {
            $("#acessar").click(acessar);
        });

        $("#acessar").click(acessar);

        function acessar(event) {
            event.preventDefault();

            var usuario = {
                nomeLogin: $("#login").val(),
                nomeSenha: $("#senha").val(),
            }


            var url = $("#urlAPI").val() + "/api/usuarios/login";

            console.log(usuario);

            $.ajax({
                type: 'POST',
                url: url,
                data: JSON.stringify(usuario),
                contentType: "application/json",
                dataType: 'json'
            })
                    .done(function (resposta) {
                        console.log(resposta);
                        Cookies.set('login', $("#login").val());
                        window.location.replace("pedidos.jsp");
                    })
                    .fail(function (respostaErro) {
                        console.log(respostaErro);

                        alert("Usuário ou senha inválidos!");
                    });
        }
    </script>


