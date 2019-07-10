<%-- 
    Document   : ingresar
    Created on : 3/07/2019, 09:05:53 PM
    Author     : machete
--%>
<%@page import="coleccion.Datos" %>
<%@page  import="modelo.Registro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        try{
            Registro registro =new Registro ();
            
            registro.setArticulo(Integer.valueOf(request.getParameter("articulo")));
            registro.setSelect(request.getParameter("select"));
            registro.setNombre(request.getParameter("nombre"));
            registro.setExistencia(Integer.valueOf(request.getParameter("existencia")));
            registro.setPrecio(Integer.valueOf(request.getParameter("precio")));
            registro.setCosto(Integer.valueOf(request.getParameter("costo")));
            
            
           
            
            
            Datos.listado.add(registro);
            
            out.print("se a registrado");
            out.print("<br/><a href='index.html'>volver al formulario</>a");
        }catch (NumberFormatException ex){
            out.print("<h1>vuelva intentarlo, eror en el registro</h1>");
            out.print("<br><a href='index.html'>volver al formulario</h1>");
        }catch(Exception e){
            out.print("<h1>"+e.getMessage()+"</h1>");
            out.print("<br><a href='index.html'>volver al formulario</h1>");
            
        }
        %>
    </body>
</html>
