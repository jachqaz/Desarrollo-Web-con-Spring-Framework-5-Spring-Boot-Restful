package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.LinkedList;
import java.util.List;

@Controller
public class HomeController {

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String goHome() {
        return "home";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mostrarPrincipal(Model model) {
        List<String> peliculas = new LinkedList<>();
        peliculas.add("Rapido y furioso");
        peliculas.add("El aro 2");
        peliculas.add("Aliens");
        model.addAttribute("peliculas", peliculas);
        return "home";
    }

    @RequestMapping(value = "/detail")
    public String mostrarDetalle(Model model) {
        String tituloPelicula = "Rapidos y furiosos";
        int duracion = 136;
        double precioEntrada = 50;
        model.addAttribute("titutlo", tituloPelicula);
        model.addAttribute("duracion", duracion);
        model.addAttribute("precio", precioEntrada);
        return "detalle";
    }

}
