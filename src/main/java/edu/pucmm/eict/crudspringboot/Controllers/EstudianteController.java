package edu.pucmm.eict.crudspringboot.Controllers;

import edu.pucmm.eict.crudspringboot.Database.Fake;
import edu.pucmm.eict.crudspringboot.Models.Estudiante;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.Locale;


@Controller()
@RequestMapping("/")
public class EstudianteController {

    @GetMapping("/")
    public String index() { return "redirect:/home"; }

    @GetMapping("/home")
    public String visualizar(Model model){

        model.addAttribute("title", "Home");
        model.addAttribute("listaEstudiantes", Fake.getInstancia().getEstudiantes());

        return "Home";
    }

    @GetMapping("/create")
    public String crear(Model model){

        model.addAttribute("title", "Registrando Estudiante");

        return "RegistrarEstudiante";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute("estudiante") Estudiante estudiante){
        Fake.getInstancia().insert(estudiante);
        return "redirect:/crear";
    }

    @GetMapping("/edit")
    public String editar(Model model, @PathParam("matricula") Integer matricula){

        System.out.println(matricula);
        model.addAttribute("estudiante", Fake.getInstancia().getEstudianteByID(matricula));
        model.addAttribute("title", "Editando Estudiante");

        return "Home";
    }

    @PostMapping("/edit")
    public String edit(@ModelAttribute("estudiante") Estudiante estudiante){
        Fake.getInstancia().update(estudiante);
        return "redirect:/edit";
    }

    @PostMapping("/delete")
    public String delete(@PathParam("matricula") Integer matricula){
        System.out.println(matricula);
        Fake.getInstancia().remove(Fake.getInstancia().getEstudianteByID(matricula));
        return "redirect:/home";
    }
}
