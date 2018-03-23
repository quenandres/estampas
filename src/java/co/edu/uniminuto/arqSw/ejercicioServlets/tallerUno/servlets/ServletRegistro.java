
package co.edu.uniminuto.arqSw.ejercicioServlets.tallerUno.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.*;
import java.util.*;



public class ServletRegistro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String accion=request.getParameter("accion");
       if(accion.equals("insertar")){
           this.RegistrarProducto(request,response);
       }
    }
    
    private void RegistrarProducto(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException{
            Productos p= new Productos();
            p.setNombre(request.getParameter("txtNom"));
            p.setPrecio(Double.parseDouble(request.getParameter("txtPre")));
            p.setImagen(request.getParameter("txtImg"));
            
            boolean respuesta = ProductoDB.insertarProducto(p);
            if(respuesta){
                response.sendRedirect("mensaje.jsp?men=se registro con exito");
            }else{
                response.sendRedirect("mensaje.jsp?men=No se registro con exito!! ");
            }
    
        }
}

  



