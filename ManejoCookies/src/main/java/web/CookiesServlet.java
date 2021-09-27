package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/CookiesServlet")

/**
 *
 * @author migue
 */
public class CookiesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // nuevo usuario - suponiendo que es la primera ves que visita el sitio
        boolean nuevoUsuario = true;

        // Obtenemos arreglo de cookies
        Cookie[] cookies = request.getCookies();
        
        // Buscar si ya existe una cookie con anterioridad
        if(cookies!= null){
            for(Cookie c:cookies){
                if(c.getName().equals("visitanteRecurrente")&& c.getValue().equals("si")){
                    nuevoUsuario = false;
                    break;
                }
            }
        }
        /*REvisar si el usuario es nuevo, si es nuevo usuario entonces agregar 
        la cookie en la respuesta para que este usuario ya no sea nuevo */
        String mensaje =  null;
        if(nuevoUsuario){
            Cookie visitanteCookie = new Cookie("visitanteRecurrente", "si");
            response.addCookie(visitanteCookie);
            mensaje = "Gracias por visitar nuestro sitio por primera vez";
        }else{
            mensaje = "usted es cliente frecuente del sitio";
        }
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(mensaje);
        out.close();
    }

}
