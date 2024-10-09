package modelo;

/**
 *
 * @author andres
 */
public class Representante {

    //atributos del modelo representante
    private int idrepresentante;
    private String primernombre;
    private String segundonombre;
    private String primerapellido;
    private String segundoapellido;
    private String cedula;
    private String telefono;
    private String direccion;

    //constructor de la clase representante
    public Representante() {
        this.idrepresentante = 0;
        this.primernombre = "";
        this.segundonombre = "";
        this.primerapellido = "";
        this.segundoapellido = "";
        this.cedula = "";
        this.telefono = "";
        this.direccion = "";
    }

    public Representante(int idrepresentante, String primernombre, String segundonombre, String primerapellido, String segundoapellido, String cedula, String telefono, String direccion) {
        this.idrepresentante = idrepresentante;
        this.primernombre = primernombre;
        this.segundonombre = segundonombre;
        this.primerapellido = primerapellido;
        this.segundoapellido = segundoapellido;
        this.cedula = cedula;
        this.telefono = telefono;
        this.direccion = direccion;
    }

    //metodos setter y getter para la entrada y salida de datos
    
    public int getIdrepresentante() {
        return idrepresentante;
    }

    public void setIdrepresentante(int idrepresentante) {
        this.idrepresentante = idrepresentante;
    }

    public String getPrimernombre() {
        return primernombre;
    }

    public void setPrimernombre(String primernombre) {
        this.primernombre = primernombre;
    }

    public String getSegundonombre() {
        return segundonombre;
    }

    public void setSegundonombre(String segundonombre) {
        this.segundonombre = segundonombre;
    }

    public String getPrimerapellido() {
        return primerapellido;
    }

    public void setPrimerapellido(String primerapellido) {
        this.primerapellido = primerapellido;
    }

    public String getSegundoapellido() {
        return segundoapellido;
    }

    public void setSegundoapellido(String segundoapellido) {
        this.segundoapellido = segundoapellido;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

}
