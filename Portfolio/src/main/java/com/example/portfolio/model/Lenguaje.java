package com.example.portfolio.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Lenguaje {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idLenguaje;
    private String nombre;
    private String imagen;
    @ManyToMany(mappedBy = "lenguajes")
    private List<Proyecto> proyectos;

    public int getIdLenguaje() {
        return idLenguaje;
    }

    public void setIdLenguaje(int idLenguaje) {
        this.idLenguaje = idLenguaje;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public List<Proyecto> getProyectos() {
        return proyectos;
    }
}
