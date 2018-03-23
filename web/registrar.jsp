<%-- 
    Document   : registrar
    Created on : 22/03/2018, 08:54:24 PM
    Author     : quenan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="style\css.css" rel="stylesheet" type="text/css">

        <title>JSP Page</title>
    </head>
    <body>
        
         <form action ="ServletMenus" method="post">
                <div id="header">
                    <ul class="nav">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="">Estampas</a>
                            <ul>
                                <li><input type="submit" value="inventario" name="boton"></li>
                                <li><input type="submit" value="registrar" name="boton"></li>
                             </ul>
			</li>
                    </ul>
		</div>
            </form>
        <br><br><br>
        <h1 style="text-align: center;">Registro</h1>
        <form action="ServletRegistro" method="get">
            <table style="margin:auto;">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="txtNom"></td>                    
                </tr>
                 <tr>
                    <td>Precio</td>
                    <td><input type="text" name="txtPre"></td>                    
                </tr>
                 <tr>
                    <td>Imagen</td>
                    <td><input type="text" name="txtImg"></td>                    
                </tr>
                <tr align="center">
                    <td><input type="submit" value="Guardar"></td>                    
                </tr>
                
            </table>
            <input type="hidden" name="accion" value="insertar">
        </form>
    </body>
</html>
