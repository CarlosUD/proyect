
package modelo;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Persona {
    String dui;
    String apellido;
    String nombre;
    
    Connection conn;
    Statement state;
    ResultSet result;
     public Persona(String dui, String apellido, String nombre){
         this.dui = dui;
         this.apellido = apellido;
         this.nombre = nombre;
     }
    public Persona(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull","root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }
    
    public boolean insertarDatos(){
        try{
           String myQuery  = "insert into tb_persona values('" + dui + "','" + apellido + "','" + nombre + "')";
          int estado = 0;
           state =conn.createStatement();
           estado = state.executeUpdate(myQuery);
            if (estado == 1) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
 /*   
    public ArrayList<Persona> consultarRegistro() {
        ArrayList<Persona> person= new ArrayList<Persona>();
        try{ 
            String myQuery = "select * from tb_persona;";
             state =conn.createStatement();
             result = state.executeQuery(myQuery);
             while (result.next()){
                 person.add(new Persona(result.getString("dui"),result.getString("apellido_persona"),result.getString("nombre_persona")));
             }
        }catch (SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person;
    }*/
    
    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    } 
}
