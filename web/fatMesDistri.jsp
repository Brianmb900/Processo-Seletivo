<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Double sp = 67836.43;
    Double rj = 36678.66;
    Double mg = 29229.88;
    Double es = 27165.48;
    Double outro = 19849.53;
    Double total = sp + rj + mg + es + outro;
    String formato = "#,##0.00";
    DecimalFormat d = new DecimalFormat(formato);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Faturanmento Mês Distribuidora</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="container-fluid">
            <div class="row justify-content-center" style="margin-top: 30px;">
                <h2>Percentual de represantação de cada estado no valor mensal</h2>
                <div class="row">
                    <h3>Total - R$ <%= total%></h3>
                    <div class="col-3">
                        <h3>SP - R$ <%= sp%> = <%= d.format(sp * 100 / total)%>%</h3>
                    </div>
                    <div class="col-3">
                        <h3>RJ - R$ <%= rj%> = <%= d.format(rj * 100 / total)%>%</h3>
                    </div>
                    <div class="col-3">
                        <h3>MG - R$ <%= mg%> = <%= d.format(mg * 100 / total)%>%</h3>
                    </div>
                    <div class="col-3">
                        <h3>ES - R$ <%= es%> = <%= d.format(es * 100 / total)%>%</h3>
                    </div>
                    <div class="col">
                        <h3>Outros - R$ <%= outro%> = <%= d.format(outro * 100 / total)%>%</h3>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
