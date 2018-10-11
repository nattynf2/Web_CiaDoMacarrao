<%--
  Created by IntelliJ IDEA.
  User: FAMILIA FREITAS
  Date: 08/04/2018
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../template/header.jsp" %>

<div class="container">

    <div class="card" >
        <div class="card-body">
            <h3><center>Pedido:</center></h3>


            <div class="row">
                <div class="form-group col-md-4">
                    <label for="massa">Selecione sua massa:</label>
                    <select class="form-control" id="massa"></select>
                </div>

                <div class="form-group col-md-4">
                    <label for="molho">Selecione seu molho:</label>
                    <select class="form-control" id="molho"></select>
                </div>

                <div class="form-group col-md-4">
                    <label for="adicional">Selecione seus adicionais:</label>
                    <select class="form-control" id="adicional"></select>
                </div>

            </div>

            <div class="row">

                <div class="form-group col-md-4">
                    <label for="qtdeComida">Quantidade de Massa:</label>
                    <select class="form-control" id="qtdeComida">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label for="bebida">Selecione sua bebida:</label>
                    <select class="form-control" id="bebida"></select>
                </div>

                <div class="form-group col-md-4">
                    <label for="qtdeBebida">Quantidade de bebida:</label>
                    <select class="form-control" id="qtdeBebida">
                        <option value="0">Selecione: </option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>

            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <label for="valor">Valor:</label>
                    <input type="text" readonly class="form-control" id="valor"/>
                </div>

            </div>


        </div>
        <div class="card">
            <div class="card-body">
                <h3>
                    <center>Pagamento:</center>
                </h3>

                <center><div class="form-group col-md-8">
                    <label for="sel1">Selecione sua forma de pagamento:</label>
                    <select class="form-control" id="sel1">
                        <option>Selecione:</option>
                        <option>Dinheiro</option>
                        <option>Cartão de Débito</option>
                        <option>Cartão de Crédito</option>
                        <option>Vale Refeição</option>
                        <option>Vale Alimentação</option>
                    </select>
                </div></center>

                <center><input class="btn btn-success" type="button" id="gravarPedido" value="Finalizar Pedido"/>
                <a href="meusPedidos.jsp" class="btn btn-primary">Ir para Meus Pedidos</a></center>

            </div>

        </div>

    </div>
    <%@include file="../template/footer.jsp" %>

    <script>
        $(function () {
            carregaMassas();
            carregaMolhos();
            carregaAdicionais();
            carregaBebidas();
            $("#gravarPedido").click(gravarPedido);
            $("#massa").change(calcularValor);
            $("#molho").change(calcularValor);
            $("#adicional").change(calcularValor);
            $("#qtdeComida").change(calcularValor);
            $("#bebida").change(calcularValor);
            $("#qtdeBebida").change(calcularValor);

        });

        function carregaMassas() {
            var url = $("#urlAPI").val() + "/api/massas/";
            $.getJSON(url)
                    .done(function (respostaMassas) {
                        console.log(respostaMassas);

                        var htmlOptions = "<option>Selecione: </option>";

                        for (var i = 0; i < respostaMassas.length; i++) {
                            var massa = respostaMassas[i];
                            htmlOptions += "<option value='" + massa.nomeMassa + "'>" + massa.nomeMassa + "</option>";
                        }

                        $("#massa").html(htmlOptions);
                    });

        }

        function carregaMolhos() {
            var url = $("#urlAPI").val() + "/api/molhos/";
            $.getJSON(url)
                    .done(function (respostaMolhos) {
                        console.log(respostaMolhos);

                        var htmlOptions = "<option>Selecione: </option>";

                        for (var i = 0; i < respostaMolhos.length; i++) {
                            var molho = respostaMolhos[i];
                            htmlOptions += "<option value='" + molho.nomeMolho + "'>" + molho.nomeMolho + "</option>";
                        }

                        $("#molho").html(htmlOptions);
                    });

        }

        function carregaAdicionais() {
            var url = $("#urlAPI").val() + "/api/adicionais/";
            $.getJSON(url)
                    .done(function (respostaAdicionais) {
                        console.log(respostaAdicionais);

                        var htmlOptions = "<option>Selecione: </option>";

                        for (var i = 0; i < respostaAdicionais.length; i++) {
                            var adicional = respostaAdicionais[i];
                            htmlOptions += "<option value='" + adicional.nomeAdicional + "'>" + adicional.nomeAdicional + "</option>";
                        }

                        $("#adicional").html(htmlOptions);
                    });

        }

        function carregaBebidas() {
            var url = $("#urlAPI").val() + "/api/bebidas/";
            $.getJSON(url)
                    .done(function (respostaBebidas) {
                        console.log(respostaBebidas);

                        var htmlOptions = "<option>Selecione: </option>";

                        for (var i = 0; i < respostaBebidas.length; i++) {
                            var bebida = respostaBebidas[i];
                            htmlOptions += "<option value='" + bebida.nomeBebida + "'>" + bebida.nomeBebida + "</option>";
                        }

                        $("#bebida").html(htmlOptions);
                    });

        }

        function calcularValor(event) {
            event.preventDefault();

            var pedidos = {
                nomeMassa: $("#massa").val(),
                nomeMolho: $("#molho").val(),
                nomeAdicional: $("#adicional").val(),
                quantidadeComida: $("#qtdeComida").val(),
                nomeBebida: $("#bebida").val(),
                quantidadeBebida: $("#qtdeBebida").val(),
                nomeUsuario: Cookies.get('login')
            };

            var url = $("#urlAPI").val() + "/api/pedidos/calcular";

            console.log(pedidos);

            $.ajax({
                type: 'POST',
                url: url,
                data: JSON.stringify(pedidos),
                contentType: "application/json",
                dataType: 'json'
            })
                    .done(function (resposta) {
                        console.log(resposta);
                
                        $("#valor").val(resposta);
                
                    })
                    .fail(function (respostaErro) {
                        console.log(respostaErro);

                        alert(respostaErro.responseJSON.error);
                    });

        }

        function gravarPedido(event) {
            event.preventDefault();

            var pedidos = {
                nomeMassa: $("#massa").val(),
                nomeMolho: $("#molho").val(),
                nomeAdicional: $("#adicional").val(),
                quantidadeComida: $("#qtdeComida").val(),
                nomeBebida: $("#bebida").val(),
                quantidadeBebida: $("#qtdeBebida").val(),
                nomeUsuario: Cookies.get('login')
            };

            var url = $("#urlAPI").val() + "/api/pedidos/";

            console.log(pedidos);

            $.ajax({
                type: 'POST',
                url: url,
                data: JSON.stringify(pedidos),
                contentType: "application/json",
                dataType: 'json'
            })
                    .done(function (resposta) {
                        console.log(resposta);
                     
                       $.growl.notice({
                                title: "Pedido Finalizado!",
                                message: "Agora é só arrumar a mesa e aguardar, obrigada pela preferência!"
                            });

                        //window.location.replace("meusPedidos.jsp");
                    })
                    .fail(function (respostaErro) {
                        console.log(respostaErro);

                        alert(respostaErro.responseJSON.error);
                    });

        }

    </script>

