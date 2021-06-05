<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body> 
        <div class="container" style="width: 475px ; height: 374px">
            
        <h1>Registro de Persona</h1>
       
        <form action="Recibir.do" method="POST" style="width: 444px">
            Dui:     <input Class ="form-control" type="text" name="txtdui" value=""/><br>
            Apellido: <input Class ="form-control" type="text" name="txtapellido" value="" /><br>
            Nombre:   <input Class ="form-control" type="text" name="txtnombre" value="" /> <br><br>    
            
        <input type="submit" class="btn btn-danger"  value="Registrar nuevo persona" /> 
         <a href="MostrarTodo.jsp" class="btn btn-success " >Nuevo Registro </a>
        </form>
        
        </div>
    </body>
</html>
