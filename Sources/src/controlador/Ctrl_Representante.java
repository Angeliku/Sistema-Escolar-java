
package controlador;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Representante;
import coneccion.Conexion;

/**
 *
 * @author andres
 */
public class Ctrl_Representante {
    
    
    //metdo para registar representantes
    public boolean ingresar(Representante objeto){
        boolean respuesta = false;
        Connection cn = coneccion.Conexion.conectar();
        
        try{
            
            PreparedStatement consulta = cn.prepareStatement("INSERT INTO Representantes VALUES(?,?,?,?,?,?,?,?)");
            consulta.setInt(1, 0);
            consulta.setString(2, objeto.getCedula());
            consulta.setString(3, objeto.getPrimernombre());
            consulta.setString(4, objeto.getSegundonombre());
            consulta.setString(5, objeto.getPrimerapellido());
            consulta.setString(6, objeto.getSegundoapellido());
            consulta.setString(7, objeto.getTelefono());
            consulta.setString(8, objeto.getDireccion());
            
            if(consulta.executeUpdate() > 0){
                respuesta = true;                
            }
            
            cn.close();
            
        } catch (SQLException e){
            System.out.println("Error al ingresar representante: " + e);
        }
        return respuesta;
    } 
    
    //metdo para corroborar que no existe representante
     public boolean exiteRep(String repsentante){
        boolean respuesta = false;
        String sql = "SELECT cedula FROM Representantes WHERE cedula = '"+ repsentante + "';";
        Statement st;
        
        try{
            
         Connection cn = Conexion.conectar();
         st = cn.createStatement();
         ResultSet rs = st.executeQuery(sql);
         
            while (rs.next()) {
                  respuesta = true;
                
            }
         
            
        } catch (SQLException e){
            System.out.println("Error al guardar: " + e);
        }
        return respuesta;
    } 
    
}
