/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniminuto.arqSw.ejercicioServlets.tallerUno.vos;

/**
 *
 * @author Administrador
 */
public class FormularioPersonaVo {

    private String nombre;

    private String edad;
    
    private String opcion;

    public FormularioPersonaVo(String nombre, String edad, String opcion) {
        this.nombre = nombre;
        this.edad = edad;
        this.opcion = opcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getOpcion() {
        return opcion;
    }

    public void setOpcion(String opcion) {
        this.opcion = opcion;
    }

   
}
