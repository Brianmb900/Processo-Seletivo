<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Inversor de String</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="container-fluid">
            <div class="row justify-content-center" style="margin-top: 30px;">
                <h2>Escreva uma palavra para invertela</h2>
                <div class="col-4">
                    <form method="POST">
                        <input class="form-control" type="text" name="strNor" placeholder="Palavra a ser invertida">
                        <br>
                        <input class="btn btn-primary" name="inverStr" type="submit" name="submit" value="Enivar">
                    </form>
                    <%
                        if (request.getParameter("inverStr") != null) {
                            String strNor = request.getParameter("strNor");
                            String strRev = "";
                            for (int i = strNor.length() - 1; 0 <= i; i--) {
                                strRev += strNor.charAt(i);
                            }
                            out.print("<h4 style='margin-top: 20px;'>Palavra Invertida: " + strRev + "</h4>");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
