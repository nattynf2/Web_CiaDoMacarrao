<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../template/header.jsp" %>

<div class="container">

    <div class="card">
        <div class="card-body">
            <h3>
                <center>Meus Pedidos:</center>
            </h3>
            
            <a href="pedidos.jsp" class="btn btn-primary">Novo Pedido</a>
            
            <button class="btn btn-danger" id="logout">Logout</button>
            <br/><br/>
            <div class="row" id="pedidos">
           </div>
        </div>
    </div>
</div>
</div>

<%@include file="../template/footer.jsp" %>

<script>
    $(function () {
        carregaPedidos();
        $("#logout").click(logout);
    });

    function logout(event){
        event.preventDefault();
        
        Cookies.remove('login');
        window.location.replace("login.jsp");
    }

    function carregaPedidos() {
        var url = $("#urlAPI").val() + "/api/pedidos/usuario/" + Cookies.get('login');
        $.getJSON(url)
                .done(function (respostaPedidos) {
                    console.log(respostaPedidos);
                    var htmlPedidos = "";
                    for (var i = 0; i < respostaPedidos.length; i++) {
                        var pedidos = respostaPedidos[i];
                        htmlPedidos += '<div class="col-md-4">';
                        htmlPedidos += '<div class="card">';
                        htmlPedidos += '<div class="card-header">';
                        htmlPedidos += 'Pedido: # ' + pedidos.id;
                        htmlPedidos += '</div>';
                        htmlPedidos += '<div class="card-body">';
                        htmlPedidos += 'Massa: ' + pedidos.nomeMassa + ' <br/>';
                        htmlPedidos += 'Molho: ' + pedidos.nomeMolho + ' <br/>';
                        htmlPedidos += 'Adicional: ' + pedidos.nomeAdicional + ' <br/>';
                        htmlPedidos += 'Quantidade: ' + pedidos.quantidadeComida + ' <br/>';
                        htmlPedidos += 'Bebida: ' + pedidos.nomeBebida + ' <br/>';
                        htmlPedidos += 'Quantidade: ' + pedidos.quantidadeBebida + ' <br/>';
                        htmlPedidos += '</div>';
                        htmlPedidos += '<div class="card-footer">';
                        htmlPedidos += 'Valor: ' + pedidos.valorTotal;
                        htmlPedidos += '</div>';
                        htmlPedidos += '</div>';
                        htmlPedidos += '</div>';
                    }
                    $("#pedidos").html(htmlPedidos);

                });
        }
</script>
