package edu.pucmm.eict.crudspringboot.Models;

import edu.pucmm.eict.crudspringboot.Database.Fake;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@Setter
public class Estudiante {

    private int matricula;
    private String nombre;
    private String apellido;
    private String telefono;

    public Estudiante() {

    }

    public Estudiante(String nombre, String apellido, String telefono) {
        this.matricula = 10000000 + (Fake.getInstancia().getEstudiantes().get(Fake.getInstancia().getEstudiantes().size() - 1).getMatricula() - 10000000);
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
    }
}
