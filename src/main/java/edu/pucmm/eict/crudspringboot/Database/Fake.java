package edu.pucmm.eict.crudspringboot.Database;

import edu.pucmm.eict.crudspringboot.Models.Estudiante;

import java.util.List;

public class Fake {

    private static Fake database;
    private List<Estudiante> estudiantes;

    private Fake(){
        Estudiante a = new Estudiante();
        a.setApellido("Marte");
        a.setNombre("Gabriel");
        a.setTelefono("123321");
        estudiantes.add(a);
    }

    public static Fake getInstancia() {
        if (database == null) {
            database = new Fake();
        }
        return database;
    }

    public List<Estudiante> getEstudiantes() {
        return estudiantes;
    }

    public void setEstudiantes(List<Estudiante> estudiantes) {
        this.estudiantes = estudiantes;
    }

    public Estudiante insert(Estudiante e) {
        getEstudiantes().add(e);
        return e;
    }

    public Estudiante getEstudianteByID(int id){
        return getEstudiantes().stream().filter(estu -> estu.getMatricula() == id).findFirst().orElse(null);
    }

    public Estudiante update(Estudiante e) {

        Estudiante temp = getEstudianteByID(e.getMatricula());

        if(temp == null) {
            return null;
        }

        temp.setNombre(e.getNombre());
        temp.setApellido(e.getApellido());
        temp.setTelefono(e.getTelefono());
        return temp;
    }

    public boolean remove(Estudiante e) {

        return getEstudiantes().remove(e);
    }

}
