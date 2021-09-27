package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/GeneracionExcelServlet")

public class GeneracionExcelServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        // El tipo con el que se responde
        response.setContentType("application/vnd.ms-excel");
        //Se descarga cuando se da click en el link
        response.setHeader("Content-Disposition", "attachment; filename = excelRespuestaNew.xls");
        
        // No guardar cache - indicando al navegador que no guarde nada
        response.setHeader("Fragma", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        //Expira de forma inmediata
        response.setDateHeader("Expires", -1);
        
        PrintWriter out = response.getWriter();
        out.println("\t Valores");
        out.println("\t2");
        out.println("\t3");
        out.println("Total\t=SUMA(B2:B3)");
        out.close();
    }
    
}
