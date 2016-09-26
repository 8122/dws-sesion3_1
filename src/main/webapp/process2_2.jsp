<%-- 
    Document   : process2_2
    Created on : 26-sep-2016, 9:31:33
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.UsuarioBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>process2_2</title>
    </head>
    <body>
        <b>Usted indicó la siguiente informacion</b>
        <br><b>Nombre</b>: <jsp:getProperty name="usuario" property="name" />
        <br><b>Email</b>: <jsp:getProperty name="usuario" property="email" />
        <br><b>¡Esta respuesta ha sido generado desde un JSP independizado
        de la lógica de negocio que produjo el JavaBean que usa!</b>
    </body>
</html>
