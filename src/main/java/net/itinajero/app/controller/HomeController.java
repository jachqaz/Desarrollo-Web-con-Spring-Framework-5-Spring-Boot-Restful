package net.itinajero.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String goHome() {
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
