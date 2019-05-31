package modelo;

import java.util.Objects;

/**
 *
 * @author MRSADIAD
 */
public class Pelicula {

    private int id;
    private String titulo;
    private String rutaImg;
    private String rutaVid;
    private String extension;
    private String descripcion;
    private String rutaSlider;
    private String valoracion;
    private String duracion;
    private String categoria;

    public Pelicula(int id, String titulo, String rutaImg, String rutaVid, String extension,
            String descripcion, String rutaSlider, String valoracion, String duracion, String categoria) {

        this.id = id;
        this.titulo = titulo;
        this.rutaImg = rutaImg;
        this.rutaVid = rutaVid;
        this.extension = extension;
        this.descripcion = descripcion;
        this.rutaSlider = rutaSlider;
        this.valoracion = valoracion;
        this.duracion = duracion;
        this.categoria = categoria;

    }

    public String getValoracion() {
        return valoracion;
    }

    public String getDuracion() {
        return duracion;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getRutaSlider() {
        return rutaSlider;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getExtension() {
        return extension;
    }

    public int getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getRutaVid() {
        return rutaVid;
    }

    public String getRutaImg() {
        return rutaImg;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + this.id;
        hash = 37 * hash + Objects.hashCode(this.titulo);
        hash = 37 * hash + Objects.hashCode(this.rutaImg);
        hash = 37 * hash + Objects.hashCode(this.rutaVid);
        hash = 37 * hash + Objects.hashCode(this.extension);
        hash = 37 * hash + Objects.hashCode(this.descripcion);
        hash = 37 * hash + Objects.hashCode(this.rutaSlider);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Pelicula other = (Pelicula) obj;
        if (this.id != other.id) {
            return false;
        }
        if (!Objects.equals(this.titulo, other.titulo)) {
            return false;
        }
        if (!Objects.equals(this.rutaImg, other.rutaImg)) {
            return false;
        }
        if (!Objects.equals(this.rutaVid, other.rutaVid)) {
            return false;
        }
        if (!Objects.equals(this.extension, other.extension)) {
            return false;
        }
        if (!Objects.equals(this.descripcion, other.descripcion)) {
            return false;
        }
        if (!Objects.equals(this.rutaSlider, other.rutaSlider)) {
            return false;
        }
        return true;
    }

}
