<%-- 
    Document   : expresiones
    Created on : 4 oct. 2021, 14:57:20
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Expresiones JSP</h1>
        Concatenar: <%= "Hola" + "¿Cómo están?"%>
        <br>
        Operación aritmética: <%= 2*3/2%>
        <br>
        Id de Sesión: <%= session.getId()%>
        <br><br>
        <a href="index.html">Regresar al inicio</a>
    </body>
</html>
