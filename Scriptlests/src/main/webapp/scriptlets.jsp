<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlets</title>
    </head>
    <body>
        <h1>Ejemplos Scriptlets</h1>

        <%--Scriptlet para enviar información al navegador--%>
        <%
            out.print("Saludos desde un scriptlet");
        %>
        <br>
        <br>
        <%--Scriptlet para ver objt implicitos--%>
        <%
            String nombreAplicacion = request.getContextPath();
            out.print(nombreAplicacion);
        %>
        <br>
        <br>
        <%--Scriptlet con códigos condicionales--%>
        <%
            if (session != null || session.isNew()) {
        %>

        <b>la sesión ES NUEVA</b>
        <%
        } else if (session != null) {
        %>
        <b>la sesión NO ES NUEVA</b>
        <%
            }
        %>
        <br>
        <br>
        <a href="index.html">Regresar al inicio</a>
    </body>
</html>
