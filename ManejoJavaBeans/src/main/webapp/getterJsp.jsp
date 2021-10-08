<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP visualizar JAVABEAN</title>
    </head>
    <body>
        <h1>JSP visualizar JAVABEAN</h1>
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session"/>
        <br>
        Valor base: <jsp:getProperty name="rectangulo" property="base"/>
        <br>
        Valor altura: <jsp:getProperty name="rectangulo" property="altura"/>
        <br>
        <br>
        Valor area : <jsp:getProperty name="rectangulo" property="area"/>
        
    </body>
</html>
