package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //1. Crear parametro de accion
        String accion = request.getParameter("accion");
        
        // Crear el JB
        Rectangulo recRequest = new Rectangulo(10,10);
        Rectangulo recSesion = new Rectangulo(3,3);
        Rectangulo recAplicacion =  new Rectangulo(5,5);
        
        // Revisar la accion proporcionada
        if("agregarVariables".equals(accion)){
            // Alcance request
            request.setAttribute("rectanguloRequest", recRequest);            
            // Alcance Sesión 
            HttpSession sesion = request.getSession();
            sesion.setAttribute("rectanguloSesion", recSesion);
            // Alcance aplicación
            ServletContext application = this.getServletContext();
            application.setAttribute("rectanguloAplicacion", recAplicacion);
            // Agregamos un mensaje
            request.setAttribute("mensaje", "Las variables fueron agregadas");
            
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        else if("listarVariables".equals(accion)){
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request, response);            
        }
        else{
            request.setAttribute("mensaje", "accion no proporcionada");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
