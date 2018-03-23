<%-- 
    Document   : mensaje.jsp
    Created on : 22/03/2018, 10:42:59 PM
    Author     : quenan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
        <%
            if(request.getParameter("men")!=null){
                out.println(request.getParameter("men"));
                response.sendRedirect("admin.jsp");
            }
        %>  
        </h1>
    </body>
</html>
