<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Foi utilizado o JSON
    Double valores[] = {22174.1664, 24537.6698, 26139.6134, 0.0, 0.0, 26742.6612, 0.0, 42889.2258, 46251.174, 11191.4722, 0.0, 0.0, 3847.4823, 373.7838, 2659.7563, 48924.2448, 18419.2614, 0.0, 0.0, 35240.1826, 43829.1667, 18235.6852, 4355.0662, 13327.1025, 0.0, 0.0, 25681.8318, 1718.1221, 13220.495, 8414.610};
    Double total = 0.0000;
    Double maior = valores[1];
    Double menor = valores[1];
    int diasFaturamento = 0;
    Double media = 0.0000;
    int diasMaiorMedia = 0;
    for (int i = 0; i < valores.length; i++) {
        total += valores[i];
        if (maior < valores[i]) {
            maior = valores[i];
        }
        if (menor > valores[i] && valores[i] != 0) {
            menor = valores[i];
        }
        if (valores[i] != 0) {
            diasFaturamento++;
        }
    }
    media = total / diasFaturamento;
    for (int i = 0; i < valores.length; i++) {
        total += valores[i];
        if (valores[i] > media) {
            diasMaiorMedia++;
        }
    }
    String formato = "#,##0.0000";
    DecimalFormat d = new DecimalFormat(formato);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Faturanmento Dia Distribuidora</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="container-fluid">
            <div class="row justify-content-center" style="margin-top: 30px;">
                <h2>Cálculos Com Faturamento Diário</h2>
                <div class="row">
                    <h3>Total - R$ <%= d.format(total)%></h3>
                    <div class="col-3">
                        <h3>Menor valor no mês - R$ <%= d.format(menor)%></h3>
                    </div>
                    <div class="col-4">
                        <h3>Maior valor no mês - R$ <%= d.format(maior)%></h3>
                    </div>
                    <div class="col-5">
                        <h3>Dias em que o faturamento foi maior que a média: <%= diasMaiorMedia%></h3>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
