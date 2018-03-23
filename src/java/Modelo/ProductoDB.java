
package Modelo;

import java.sql.*;
import java.util.*;
import utils.ConexionDB;

public class ProductoDB {
    //metodo para traer productos
    public static ArrayList<Productos> obtenerproductos(){
        ArrayList<Productos> lista= new ArrayList<Productos>();
        Connection cn = null;
        cn = ConexionDB.getConexion();
        CallableStatement csta = null;
        ResultSet rs = null;
        try{
            csta = cn.prepareCall("{call lista_producto()}");
            rs = csta.executeQuery();
            while(rs.next()){
                Productos p = new Productos(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4));
                lista.add(p);
            }
            
            
        }catch(Exception e){
            System.out.println("Error "+e);
        }
        
        return lista;
    }
    //INSERTAR NUEVOS PRODUCTOS
    
    public static boolean insertarProducto(Productos pro){
        boolean respuesta=false;
        Connection cn=null;
        CallableStatement csta = null;
        cn = ConexionDB.getConexion();
        try{
            csta=cn.prepareCall("{call insertar_producto(?,?,?,?)}");
            csta.registerOutParameter(1,Types.INTEGER);
            csta.setString(2,pro.getNombre());
            csta.setDouble(3,pro.getPrecio());
            csta.setString(4,pro.getImagen());
            int i = csta.executeUpdate();
            if(i==1){
                respuesta=true;
            }    
            
        }catch(Exception e){System.out.println("Error al crea producto");}
        
        
        return respuesta;
    }
    
    
}
