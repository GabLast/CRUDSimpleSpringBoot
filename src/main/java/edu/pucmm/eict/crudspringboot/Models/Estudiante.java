package edu.pucmm.eict.crudspringboot.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//@Entity
public class Estudiante {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int matricula;
    private String nombre;
    private String apellido;
    private String telefono;
}
