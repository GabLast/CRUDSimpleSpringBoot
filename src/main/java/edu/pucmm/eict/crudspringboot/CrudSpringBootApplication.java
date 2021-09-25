package edu.pucmm.eict.crudspringboot;

import edu.pucmm.eict.crudspringboot.Database.Fake;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CrudSpringBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(CrudSpringBootApplication.class, args);
        Fake.getInstancia().init();
    }

}
