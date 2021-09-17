package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Servlet")

public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Leer parámetros del formulario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        System.out.println("Usuario:" + usuario);
        System.out.println("Password:" + password);

        //Enviar los parametros a otra pagina HTML
        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<body>");
        out.print("El parametro usuario es: " + usuario);
        out.print("<br/>");
        out.print("El parametro contraseña es: " + password);
        out.print("</body>");
        out.print("</html>");
        out.close();
    }
}
