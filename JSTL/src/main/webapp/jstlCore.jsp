<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL CORE</title>
    </head>
    <body>
        <h1>JSTL CORE EJEMPLOS</h1>
        <!-- Manipulación de variables -->
        <c:set var="nombre" value="Mariela"/>

        Variable nombre: <c:out value="${nombre}"/>
        <br>
        Variable con código HTML:
        <c:out value="<b>hola</b>" escapeXml = "false"/>
        <br>
        <br>
        <!-<!-- Codigo condicionado -->
        <c:set var="bandera" value="true"/>
        <c:if test="${bandera}">
            La bandera es verdadera
        </c:if>
        <br>
        <!-- Codigo condicionado SWITCH-->
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion ==1}">
                    <br> Opcion 1 Seleccionada
                </c:when>
                <c:when test="${param.opcion ==2}">
                    <br> Opcion 2 Seleccionada
                </c:when>
                <c:otherwise>
                    <br> Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
        <!-- Trabajando con Arreglos -->
        
        <%
            String musica[] = {"Rock", "Pop", "Reggae", "Clasica"}; 
            request.setAttribute("musica", musica);
            
        %>
        <br>
        <br>
        Lista de Música:
        <br>
        <c:forEach var="genero" items="${musica}">
        <li>${genero}</li>
        </c:forEach>
    </body>
</html>
