<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Fibonacci</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="container-fluid">
            <div class="row justify-content-center" style="margin-top: 30px;">
                <h2>Escreva um número para ver se ele pertence a sequência de Fibonacci</h2>
                <div class="col-4">
                    <form method="POST">
                        <input class="form-control" type="number" min = 0 name="numFibo" placeholder="Número a ser verificado">
                        <br>
                        <input class="btn btn-primary" name="verFibo" type="submit" name="submit" value="Verificar">
                    </form>
                    <%
                        if (request.getParameter("verFibo") != null) {
                            int num = Integer.parseInt(request.getParameter("numFibo"));
                            int rfi = 1;
                            int ant = 0;
                            if (num == 1 || num == 0) {
                                out.print("<h4 style='margin-top: 20px;'>Na sequência</h4>");
                            } else {
                                while (num > rfi) {
                                    ant = rfi - ant;
                                    rfi += ant;
                                    if (num == rfi) {
                                        out.print("<h4 style='margin-top: 20px;'>Na sequência</h4>");
                                    }
                                }
                                if (num < rfi) {
                                    out.print("<h4 style='margin-top: 20px;'>Fora da sequência</h4>");
                                }
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
