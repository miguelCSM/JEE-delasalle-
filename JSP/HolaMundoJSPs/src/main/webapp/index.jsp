<%-- 
    Document   : index
    Created on : 4 oct. 2021, 14:31:55
    Author     : migue
--%>

<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Introduction</title>
    </head>
    <body>
        <h1>Hola mundo JSP's</h1>
        <br>
        <ul>
            <li><%out.print("Hola mundo desde la salida estandar");%></li>
            <li>${"Hola mundo con Expression Language (EL)"}</li>
            <li><%="Hola desde una expresión"%></li>
            <li><c:out value="Hola mundo con JSTL"/></li>
        </ul>
    </body>
</html>
