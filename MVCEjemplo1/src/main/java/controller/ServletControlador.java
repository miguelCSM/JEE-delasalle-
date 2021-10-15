package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // Crear el JB
        Rectangulo rec = new Rectangulo(10,10);
        
        // Crear la sesión
        HttpSession sesion = request.getSession();
        sesion.setAttribute("rectangulo", rec);
        
        // Crear un atributo mensaje
        request.setAttribute("mensaje", "Estás en el Servlet de despliegue");
        
        // Redireccionar a la vista
        RequestDispatcher rd = request.getRequestDispatcher("view/desplegarVariables.jsp");
        rd.forward(request, response);
        
    }
}
