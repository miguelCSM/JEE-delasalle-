<%--Agregar declaraciones JSP(atributos o m�todos)--%>
<%!
    // Declarar una varible con m�todo get
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
        <!<!-- Por medio de una expresi�n puedo recupera mis variables y m�todos -->
        <br>
        Valor de usuario por medio del atributo: <%=this.usuario%>
        <br>
        Valor de usuario por medio del m�todo: <%=this.getUsuario()%>
        <br>
        Contador de visitas: <%=this.contadorVisitas++%>
    </body>
</html>
