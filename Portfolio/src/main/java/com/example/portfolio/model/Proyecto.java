package com.example.portfolio.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Proyecto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IdProyecto;
    private String nombre;
    @Column(columnDefinition = "TEXT")
    private String descripcion;
    private String imagen;
    private String url;

    @ManyToMany(cascade = {CascadeType.PERSIST,CascadeType.MERGE})
    @JoinTable( name = "proyecto_lenguaje",
            joinColumns = @JoinColumn(name = "idProyecto"),
            inverseJoinColumns = @JoinColumn(name = "idLenguaje"))
    private List<Lenguaje> lenguajes;
    public int getIdProyecto() {
        return IdProyecto;
    }

    public void setIdProyecto(int idProyecto) {
        IdProyecto = idProyecto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setLenguajes(List<Lenguaje> java) {
    }

    public List<Lenguaje> getLenguajes() {
        return lenguajes;
    }
}
