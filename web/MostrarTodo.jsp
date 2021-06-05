<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
        <title>JSP Page</title>
    </head>
    <body style="margin-top: 12px; background: rgb(85, 48 ,93)">      
        <%

        Connection cone;
            String url = "jdbc:mysql://localhost:3306/recurso_humano";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
            Class.forName(Driver);
            cone = DriverManager.getConnection(url, user, clave);
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = cone.createStatement();
            rs = smt.executeQuery("select * from tb_persona");
            //Creamo la Tabla:     
        %>
       
        <br>               
        <div class="container" >        
            <a href="index.jsp" class="btn btn-success " >Nuevo Registro </a>
            <table class="table table-responsive"  id="tablaDatos" style="margin-top: 30px">
                    <thead>
                        <tr style="background: #a6e1ec">
                            <th class="text-center">ID</th>
                            <th class="text-center">DUI</th>
                            <th class="text-center">Apellidos</th>
                            <th class="text-center">Nombres</th>
                            
                        </tr>
                    </thead>
                    <tbody id="tbodys">
                        <%
                            while (rs.next()) {
                        %>
                        <tr style="background: yellowgreen">
                            <td class="text-center" style=" width:  115px"><%= rs.getInt("id")%></td>
                            <td class="text-center" style=" width:  215px"><%= rs.getString("dui_persona")%></td>
                            <td class="text-center" style=" width:  215px"><%= rs.getString("apellidos_persona")%></td>
                            <td class="text-center" style=" width:  215px"><%= rs.getString("nombre_persona")%></td>
                            
                        </tr>
                        <%}%>
                </table>
            </div>        
        
        </div>        
        <script src="js/jquery.js" type="text/javascript"></script>             
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
    </body>
</html>