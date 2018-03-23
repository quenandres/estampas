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
        <form action="ServletRegistro">
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
                    <td>
                        <select name="txtImg">
                            <option value="1.png">Estampa 1</option>
                            <option value="2.png">Estampa 2</option>
                            <option value="3.png">Estampa 3</option>
                            <option value="4.png">Estampa 4</option>
                            <option value="5.png">Estampa 5</option>
                            <option value="6.png">Estampa 6</option>
                            <option value="7.png">Estampa 7</option>
                            <option value="8.png">Estampa 8</option>
                            <option value="9.png">Estampa 9</option>
                            <option value="10.png">Estampa 10</option>
                        </select>
                    </td>                    
                </tr>
                <tr align="center">
                    <td><input type="submit" value="Guardar"></td>                    
                </tr>
                
            </table>
            <input type="hidden" name="accion" value="insertar">
        </form>
    </body>
</html>
