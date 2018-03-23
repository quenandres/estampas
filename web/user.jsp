
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/css.css" rel="stylesheet" type="text/css">
        
        <title>Usuario</title>
    </head>
    <body>
        <div class="main">
            <h3><strong>Bienvenido Artista</strong></h3>

            <form action ="ServletMenus" method="post">
                <div id="header">
                    <ul class="nav" >
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="">Estampas</a>
					<ul>
						<li><a href="carritodecompras.jsp">carrito de compras</a></li>
						
						</li>
					</ul>
				</li>
                                
				
			</ul>
                    
		</div>
            </form>
        <br><br><br>
        
        <h1 style="margin-bottom: 20px;">Estampados</h1>
        
        
        <table style="margin:auto;" border="0" width="90%" align="center"  background-color: rgba(255,255,255,.4); >
            <%
            ArrayList<Productos> lista=ProductoDB.obtenerproductos();
                int salto=0;
                for(int i=0;i<lista.size();i++){
                    Productos p=lista.get(i);
                   salto++;
                   %>
                    
                        <td>
                        <form action="ServletRegistro">
                            <img style="margin:auto;" src="img/<%=p.getImagen()%>" width="100" height="100"><br>
                            <%=p.getNombre()%><br>
                            <%=p.getPrecio()%>        <br>                                      
                            <input type="submit" value="Comprar"></b></a>
                            <input type="hidden" name="Imagen" value="<%=p.getImagen()%>">
                            <input type="number" min="0" max="24" name="Cantidad" placeholder="cantidad">
                            <input type="hidden" name="accion" value="compra">
                        </form>
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
        </div>
    </body>
</html>
