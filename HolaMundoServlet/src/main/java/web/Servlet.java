package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/Servlet")

public class Servlet extends HttpServlet{
    //Llamada a través del navegador    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hola mundo</h1> </br> <strong>desde un servlet XD</strong>");
    }   
}
