<%-- 
    Document   : process2_1
    Created on : 26-sep-2016, 9:10:36
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.UsuarioBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>process2_1</title>
    </head>
    <body>
        <% if (request.getParameter("name")==null
            && request.getParameter("email")==null) { %>
            Complete este formulario
            <form method="POST" action="process2_1.jsp">
                Su nombre: <input type="text" name="name" size="26"><br>
                Su email: <input type="text" name="email" size="26"><br>
                <input type="submit" value="Enviar">
            </form>
        <% } else { %> <%-- scriptlet JSP --%>
            <% String nombre, mail; %>
            <%
                nombre = request.getParameter("name");
                mail = request.getParameter("email");
            %>
            <jsp:setProperty name="usuario" property="name" value="<%=nombre%>" />
            <jsp:setProperty name="usuario" property="email" value="<%=mail%>" />
            <jsp:forward page="/process2_2.jsp" ></jsp:forward>
        <% } %>
    </body>
</html>
