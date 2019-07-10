/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author machete
 */
public class Registro {

    private int articulo;
    private String select;
    private String nombre;
    private int existencia;
    private int precio;
    private int costo;
    private int total;
    private int total2;
    

    public Registro() {
        articulo = 0;
        select = "";
        nombre = "";
        existencia = 0;
        precio = 0;
        costo = 0;
        total = 0;
        total2= 0;

    }

    //-------------------------------------->
    //get and set de Arrticulo -----/°.°|
    public int getArticulo() {
        return articulo;
    }

    public void setArticulo(int articulo) {
        this.articulo = articulo;

    }
    //-------------------------------------->   

    //get and set de select -----/°.°|
    public String getSelect() {
        return select;
    }

    public void setSelect(String select) {

        this.select = select;
    }

    //-------------------------------------->   
    //get and set de nombre -----/°.°|
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;

    }

    //-------------------------------------->
    //get and set de existencia -----/°.°|
    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;

    }

    //-------------------------------------->
    //get and set de precio -----/°.°|
    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;

    }
      //-------------------------------------->
    
    //get and set de costo -----/°.°|
    public int getCosto(){
        return costo;
    }
    public void setCosto(int costo){
        this.costo = costo;
    }
    //get and set de total -----/°.°|
    public int getTotal(){
        return total =existencia*precio;
    }
    public void setTotal(int total){
        this.total= total;
        
    }
     //get and set de total -----/°.°|
    public int getTotal2(){
        return total2 =existencia*costo;
    }
    public void setTotal2(int total2){
        this.total2= total2;
        
    }
    
    @Override
    public String toString(){
        return "Datos(" + "articulo="+ articulo +" categoria="+ select + " nombre=" + nombre + "existencia=" + existencia +"precio="+ precio + "costo" + costo + "costo total="+ total+ "precio total="+total2;
    }
    
    //-------------------------------------->
    //-------------------------------------->
    
}
