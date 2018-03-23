
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/css.css" rel="stylesheet" type="text/css">
        
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header">
			<ul class="nav">
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="">Estampas</a>
					<ul>
                                            <li><a href="">Inventario</a></li>
                                            <li><a href="">Registrar</a></li>												
					</ul>
				</li>
                                
				
			</ul>
		</div>
        <br><br><br>
        
        <h1 align="center">Estampados</h1>
        
        
        <table style="margin:auto;" border="0" width="700" align="center" bgcolor="#303030">
            <%
            ArrayList<Productos> lista=ProductoDB.obtenerproductos();
                int salto=0;
                for(int i=0;i<lista.size();i++){
                    Productos p=lista.get(i);
                   salto++;
                   %>
                    
                        <td><img style="margin:auto;" src="imagenes/<%=p.getImagen()%>" width="100" height="100"><br>
                            <%=p.getNombre()%><br>
                        <%=p.getPrecio()%>        <br>                                      
                        Modificar \\ Añadir
                        </td>
                   <%
                       if(salto==3){
                           %>
                            </tr>
                           <%
                            salto=0;
                       }
                       
                    }
            %>           
        </table>
        
    </body>
</html>
