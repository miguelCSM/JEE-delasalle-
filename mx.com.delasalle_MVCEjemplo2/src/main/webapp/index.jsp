<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo MVC 2.0</h1>
        <br>
        <div style="color:red">${mensaje}</div>
        <br>
        <a href="${pageContext.request.contextPath}/ServletControlador">
            Controlador sin parametros
        </a>
        <br>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=agregarVariables">
            Controlador setear variables
        </a>
        <br>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarVariables">
            Controlador listar variables
        </a>
    </body>
</html>
