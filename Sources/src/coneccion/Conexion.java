package coneccion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author andres
 */
public class Conexion {

    //conexion local
    public static Connection conectar() {

        try {

            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/Sistema", "andres", "andres");
            return cn;

        } catch (SQLException e) {
            System.out.println("Error en la conexion local " + e);
        }
        return null;
    }
}
