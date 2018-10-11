<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer class="bg-faded text-center py-4">
    <div class="container">
        <p class="m-0">&copy; Cia do Macarrão 2017</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery.growl.js" type="text/javascript"></script>
<script src="../js/js.cookie.js"></script>

<script>
$(function() {
    if (Cookies.get('login') == undefined || Cookies.get('login') == null) {
        $("#menuLogin").show();
        $("#menuMeusPedidos").hide();
    } else {
        $("#menuLogin").hide();
        $("#menuMeusPedidos").show();
    }
});
</script>

</body>

</html>