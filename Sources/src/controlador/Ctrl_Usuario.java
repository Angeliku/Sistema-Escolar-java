package controlador;

import coneccion.Conexion;
import modelo.Usuario;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import javax.swing.JOptionPane;

/**
 *
 * @author andres
 */
public class Ctrl_Usuario {

    //metodo para iniciar sesion
    public boolean loginUser(Usuario objeto) {

        boolean respuesta = false;

        Connection cn = Conexion.conectar();
        String sql = "SELECT usuario, contraseña FROM Usuario WHERE usuario = '" + objeto.getUsuario() + "' AND contraseña = '" + objeto.getContraseña() + "'";
        Statement st;

        try {

            st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                respuesta = true;

            }
        } catch (SQLException e) {
            System.out.println("Error al iniciar sesion");
            JOptionPane.showMessageDialog(null, "Error al iniciar sesion");
        }

        return respuesta;
    }

}
