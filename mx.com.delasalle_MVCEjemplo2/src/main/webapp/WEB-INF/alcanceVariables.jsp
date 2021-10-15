<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 
    <body>
        <h1>Alcance de variables</h1>
        Variables request: 
        <br>
        Base: ${rectanguloRequest.base}
        <br>
        Altura: ${rectanguloRequest.altura}
        <br>
        Área: ${rectanguloRequest.area}
        <br>
        Perimetro: ${rectanguloRequest.perimetro}
        <br><br>
        Variables Session: 
        <br>
        Base: ${rectanguloSesion.base}
        <br>
        Altura: ${rectanguloSesion.altura}
        <br>
        Área: ${rectanguloSesion.area}
        <br>
        Perimetro: ${rectanguloSesion.perimetro}
        <br><br>
        Variables Aplicación: 
        <br>
        Base: ${rectanguloAplicacion.base}
        <br>
        Altura: ${rectanguloAplicacion.altura}
        <br>
        Área: ${rectanguloAplicacion.area}
        <br>
        Perimetro: ${rectanguloAplicacion.perimetro}
        <br><br>
        <a href="${pageContext.request.contextPath}/index.jsp">
            Ir al inicio
        </a>

    </body>
</html>
