package modelo;

/**
 *
 * @author andres
 */
public class Estudiante {

    //Atributos de la clase Estudiante
    private int idestudiante;
    private String primernombre;
    private String segundonombre;
    private String primerapellido;
    private String segundoapellido;
    private String cedula;
    private String fecha;
    private String cedularep;

    //Constructor de la clase Estduiante
    //metodo vacio
    public Estudiante() {
        this.idestudiante = 0;
        this.primernombre = "";
        this.segundonombre = "";
        this.primerapellido = "";
        this.cedula = "";
        this.fecha = "";
        this.cedularep = "";
    }

    public Estudiante(int idestudiante, String primernombre, String segundonombre, String primerapellido, String segundoapellido, String cedula, String fecha, String cedularep) {
        this.idestudiante = idestudiante;
        this.primernombre = primernombre;
        this.segundonombre = segundonombre;
        this.primerapellido = primerapellido;
        this.segundoapellido = segundoapellido;
        this.cedula = cedula;
        this.fecha = fecha;
        this.cedularep = cedularep;
    }

    //Metodo Setter and Getter 
    public int getIdestudiante() {
        return idestudiante;
    }

    public void setIdestudiante(int idestudiante) {
        this.idestudiante = idestudiante;
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCedularep() {
        return cedularep;
    }

    public void setCedularep(String cedularep) {
        this.cedularep = cedularep;
    }

}
