package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/CarritoServlet")
public class CarritoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Creamos sesion 
        response.setContentType("text/html;charset=utf-8");
        
        HttpSession sesion = request.getSession();
        // Procesar artículos existentes
        List<String> articulos = (List<String>) sesion.getAttribute("articulos");
        // Verficar si la articulos existe
        if (articulos == null) {
            //Inicializamos la lista
            articulos = new ArrayList<>();
            sesion.setAttribute("articulos", articulos);
        }
        // Procesamos el artículo
        String articuloNuevo = request.getParameter("articulo");

        // Revisar y agregar el artículo nuevo
        if (articuloNuevo != null && !articuloNuevo.trim().equals("")) {
            articulos.add(articuloNuevo);
        }
        try ( PrintWriter out = response.getWriter()) {
            out.print("<h1> Lista de artículos</h1>");
            out.print("<br>");
            // Iterar articulos
            for (String articulo : articulos) {
                out.print("<li>" + articulo + "</li>");
            }
            out.print("<br>");
            out.print("<a href='/CarritoCompras'>Regresar al inicio</a>");
        }

    }
}
