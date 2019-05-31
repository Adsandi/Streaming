package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MRSADIAD
 */
public class AccesoDAO {

    private Connection conexion = null;
    private Statement sentencia = null;
    private ResultSet rs;
    private String sql;
    private final String urlConexion = "jdbc:mysql://127.0.0.1:3306/streaming", user = "root", password = "admin";
    private ArrayList<Pelicula> listaPeliculas = null;

    public AccesoDAO() {
        super();
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            this.conexion = DriverManager.getConnection(urlConexion, user, password);
            this.sentencia = conexion.createStatement();
            this.listaPeliculas = new ArrayList<>();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AccesoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Pelicula> getListaPeliculas() {
        try {
            this.sql = "SELECT * FROM peliculas";
            this.rs = sentencia.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String nombre = rs.getString(2);
                String rutaImg = rs.getString(3);
                String rutaVid = rs.getString(4);
                String extension = rs.getString(5);
                String descripcion = rs.getString(6);
                String rutaSlider = rs.getString(7);
                String valoracion = rs.getString(8);
                String duracion = rs.getString(9);
                String categotia = rs.getString(10);
                this.listaPeliculas.add(new Pelicula(id, nombre, rutaImg, rutaVid, extension, descripcion, rutaSlider, valoracion, duracion, categotia));
            }
        } catch (SQLException ex) {
            System.err.println("No se ha podido establecer la conexion con la BBDD: " + ex.getMessage());
        } finally {
            closeThreads();
        }
        return listaPeliculas;
    }

    public Pelicula getPelicula(int id, ArrayList<Pelicula> lista) {
        Pelicula pelicula = null;

        for (Pelicula pel : lista) {
            if (pel.getId() == id) {
                pelicula = pel;
            }
        }
        return pelicula;
    }

    private void closeThreads() {
        try {
            this.sentencia.close();
            this.conexion.close();
            this.rs.close();
        } catch (SQLException ex) {
            System.err.println("Error al cerrar los flujos: " + ex.getMessage());
        }
    }

}
