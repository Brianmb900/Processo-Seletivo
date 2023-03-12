<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Home</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <h1 style="margin-top: 20px;"> Questões do Processo Seletivo Para Estagiário(a) de Desenvolvimento Java </h1>
                <h2> Questões: </h2>
            </div>

            <div class="row justify-content-center">
                <h5>Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), 
                    escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado 
                    pertence ou não a sequência.</h5>

                <h5>IMPORTANTE:</h5>
                <p>Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código;</p>
            </div>
            <hr>
            <div class="row justify-content-center">
                <h5>Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, faça um programa, na linguagem que desejar, que calcule e retorne:</h5>
                <ul>
                    <li>O menor valor de faturamento ocorrido em um dia do mês;</li>
                    <li>O maior valor de faturamento ocorrido em um dia do mês;</li>
                    <li>Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.</li>
                </ul>

                <h5>IMPORTANTE:</h5>
                <ul>
                    <li>Usar o json ou xml disponível como fonte dos dados do faturamento mensal;</li>
                    <li>Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média;</li>
                </ul>
            </div>
            <hr>
            <div class="row justify-content-center">
                <h5>Dado o valor de faturamento mensal de uma distribuidora, detalhado por estado:</h5>
                <ul>
                    <li>SP – R$67.836,43</li>
                    <li>RJ – R$36.678,66</li>
                    <li>MG – R$29.229,88</li>
                    <li>ES – R$27.165,48</li>
                    <li>Outros – R$19.849,53</li>
                </ul>

                <p>Escreva um programa na linguagem que desejar onde calcule o percentual de representação que cada estado teve dentro do valor total mensal da distribuidora.</p>
            </div>
            <hr>
            <div class="row justify-content-center">
                <h5>Escreva um programa que inverta os caracteres de um string.</h5>

                <h5>IMPORTANTE:</h5>
                <ul>
                    <li>Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;</li>
                    <li>Evite usar funções prontas, como, por exemplo, reverse;</li>
                </ul>
            </div>
        </div>
    </body>
</html>
