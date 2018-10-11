<%--
  Created by IntelliJ IDEA.
  User: FAMILIA FREITAS
  Date: 22/04/2018
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../template/header.jsp" %>

<style type="text/css">
    <!--
    .style1 {
        color: #FF0000;
        font-size: x-small;
    }
    .style3 {color: #0000FF; font-size: x-small; }
    -->
</style>

<script type="text/javascript">
    function validaCampo(usuario)
    {
        if(usuario.nomeUsuario == "")
        {
            alert("O Campo nome é obrigatório!");
            return false;
        }

        if(usuario.numeroCpf == "")
        {
            alert("O Campo CPF é obrigatório!");
            return false;
        }

        if(usuario.nomeEmail == "")
        {
            alert("O Campo email é obrigatório!");
            return false;
        }

        if(usuario.nomeEndereco == "")
        {
            alert("O Campo endereço é obrigatório!");
            return false;
        }

        if(usuario.numeroEndereco == "")
        {
            alert("O Campo Número é obrigatório!");
            return false;
        }

        if(usuario.nomeLogin == "")
        {
            alert("O Campo Login é obrigatório!");
            return false;
        }

        if(usuario.nomeSenha == "")
        {
            alert("Digite uma senha!");
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
            <strong>Cadastro</strong>
        </h2>
        <hr class="divider">

        <form id="cadastro" onsubmit="return validaCampo(); return false;">
            <div class="form-group">
                <label>Nome:*</label>
                <input name="nome" class="form-control form-control-sm" type="text" id="nome" size="50" maxlength="50" />
            </div>
            <div class="form-group">
                <label>CPF:*</label>
                <input name="cpf" class="form-control form-control-sm" type="number" id="cpf" size="12" maxlength="12" />
            </div>
            <div class="form-group">
                <label>Email:*</label>
                <input name="email" class="form-control form-control-sm" type="text" id="email" size="50" maxlength="50" />
            </div>
            <div class="form-group">
                <label>Telefone:</label>
                <input name="telefone" class="form-control form-control-sm" type="text" id="telefone" />
                <small class="form-text-muted">Apenas n&uacute;meros</small>
            </div>
            <div class="form-group">
                <label>Endereço:*</label>
                <input name="endereco" class="form-control form-control-sm" type="text" id="endereco" size="50" maxlength="50" />
            </div>
            <div class="form-group">
                <label>Numero:*</label>
                <input name="numero" class="form-control form-control-sm" type="number" id="numero" size="8" maxlength="8" />
            </div>
            <div class="form-group">
                <label>Login:*</label>
                <input name="login" class="form-control form-control-sm" type="text" id="login" maxlength="12" />
            </div>
            <div class="form-group">
                <label>Senha:*</label>
                <input name="senha" class="form-control form-control-sm" type="password" id="senha" maxlength="12" />
            </div>
            <input class="btn btn-primary" name="cadastrar" type="button" id="cadastrar" value="Concluir meu Cadastro!" />

            <input class="btn btn-default" name="limpar" type="reset" id="limpar" value="Limpar Campos preenchidos!" />

        </form>
    </div>
</div>
</div>

<%@include file="../template/footer.jsp" %>

<script>

$("#cadastrar").click(cadastrar);

function cadastrar(event) {
    event.preventDefault();
    
    var usuario = {
        nomeUsuario: $("#nome").val(),
        nomeSenha: $("#senha").val(),
        numeroCpf: $("#cpf").val(),
        nomeLogin: $("#login").val(),
        nomeEmail: $("#email").val(),
        nomeEndereco: $("#endereco").val(),
        numeroEndereco: $("#numero").val(),
        numeroTel: $("#telefone").val()
    }
    
    if (!validaCampo(usuario)) {
        return;
    }
    
    var url = $("#urlAPI").val() + "/api/usuarios/";
    
    console.log(usuario);
    
    $.ajax({
        type: 'POST',
        url: url,
        data: JSON.stringify(usuario), // or JSON.stringify ({name: 'jonas'}),
        contentType: "application/json",
        dataType: 'json'
    })
        .done(function(resposta) {
            console.log(resposta);
            
            alert("Cadastrado com sucesso.");
            
            window.location.replace("login.jsp");
        })
        .fail(function(respostaErro){
            console.log(respostaErro);
            
            alert(respostaErro.responseJSON.error);
        });
}
</script>
