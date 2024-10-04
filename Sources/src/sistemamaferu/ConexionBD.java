package sistemamaferu;
import java.sql.*;
import javax.swing.JOptionPane;
public class ConexionBD {
    
   public String db = "sistema";
   public String url = "jdbc:mysql://localhost/"+db;
   public String user = "andres";
   public String pass = "andres";
   public Statement comando=null;
   
   public ConexionBD()
   {
     
   }

   
   public Connection Conectar()
   {
       Connection link = null;
       try
       {
          //Cargamols el Driver MySQL
           Class.forName ("org.gjt.mm.mysql.Driver");
            // Creamos un enlace hacia la base de datos
           link = DriverManager.getConnection(this.url, this.user, this.pass);
       }
       catch (Exception e)
       {
        JOptionPane.showMessageDialog (null, e);
       } 
       return link;
   }
}