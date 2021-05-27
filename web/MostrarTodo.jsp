<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Todos los Registos</h1>
    <c:forEach var="ListaTotal" items="${sessionScope.Persona}">
        <hr>
        DUI: ${ListaTotal.dui}<br>
        Apellido: ${ListaTotal.apellido}<br>
        Nombre: ${ListaTotal.nombre}<br>
         <hr>
    </c:forEach>
    </body>
</html>
