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
        <div class="container">
            deletePersona();
        <h1>Registro de Persona</h1>
       
        <form action="Recibir.do" method="POST">
            Dui:     <input Class ="form-control" type="text" name="txtdui" value="" /><br>
            Apellido: <input Class ="form-control" type="text" name="txtapellido" value="" /><br>
            Nombre:   <input Class ="form-control" type="text" name="txtnombre" value="" /> <br><br>    
            
        <input type="submit" class="btn-info"  value="Registrar nuevo persona" /> 
        
        <input type="button" value="Consultar Registros" class="btn-info" id="r" onClick=" window.location.href='Mostrar.do' ">
         <input type="button" value="Actualizar Registros" class="btn-info" id="r" onClick=" window.location.href='Mostrar.do' ">
          <input type="button" value="Eliminar Registros" class="btn-info" id="r" onClick=" window.location.href='Delete.jsp' ">
            </form>
        
        </div>
    </body>
</html>
