<!DOCTYPE html>
<%
    String fondo = request.getParameter("colorFondo");
    if (fondo == null || fondo.trim().equals("")) {
        fondo = "white";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor = "<%=fondo%>">
        <h1>Color: <%=fondo%></h1>   
        <a href="index.html">Regresar al inicio</a>
    </body>
</html>
