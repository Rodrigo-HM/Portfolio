package com.example.portfolio.controller;

import com.example.portfolio.model.Proyecto;
import com.example.portfolio.repository.ProyectoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Optional;

@Controller
public class ProyectoControler {
    @Autowired
    private ProyectoRepository proyectoRepository;

    @GetMapping("/")
    public String listaProyectos(ModelMap model) {

        ArrayList<Proyecto> lista = new ArrayList<>();
        lista = (ArrayList<Proyecto>) proyectoRepository.findAll();
        model.addAttribute("proyectos", lista);

        return "index";
    }

    @GetMapping("/proyecto/{id}")
    public String mostrarProyecto(@PathVariable Integer id, ModelMap model) {
        Optional<Proyecto> proyectoOpt = proyectoRepository.findById(id);
        if (proyectoOpt.isPresent()) {
            model.addAttribute("proyecto", proyectoOpt.get());
            return "proyecto";
        } else {
            return "redirect:/";
        }
    }


}
