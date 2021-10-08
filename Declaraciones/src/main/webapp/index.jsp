<%--Agregar declaraciones JSP(atributos o métodos)--%>
<%!
    // Declarar una varible con método get
    private String usuario = "Miguel";

    public String getUsuario() {
        return this.usuario;
    }
    // Declarar contador de visitas
    private int contadorVisitas = 1;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Declaraciones</h1>
        <!<!-- Por medio de una expresión puedo recupera mis variables y métodos -->
        <br>
        Valor de usuario por medio del atributo: <%=this.usuario%>
        <br>
        Valor de usuario por medio del método: <%=this.getUsuario()%>
        <br>
        Contador de visitas: <%=this.contadorVisitas++%>
    </body>
</html>
