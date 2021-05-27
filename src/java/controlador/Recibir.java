
package controlador;
import modelo.Persona;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Recibir extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String dui = request.getParameter("txtdui");
       String apellido = request.getParameter("txtapellido");
       String nombre = request.getParameter("txtnombre");
       
       Persona person = new Persona();
       person.setDui(dui);
       person.setApellido(apellido);
       person.setNombre(nombre);
        if (person.insertarDatos()== true) {
            request.getRequestDispatcher("Exito.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("noExito.jsp").forward(request, response);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
