<%-- 
    Document   : listar
    Created on : 3/07/2019, 02:34:02 PM
    Author     : machete
--%>
<%@page import="coleccion.Datos"%>
<%@page import="modelo.Registro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista </title>
    </head>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <body>
         <table class="table">
             <thead class="thead-dark">
                
                <tr>
                     <th scope="col">#</th>
                    <th scope="col">Articulo</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Exitencia</th>
                    <th scope="col">Precio Unidad</th>
                    <th scope="col">Costo Unidad</th>
                     <th scope="col">Costo Total</th>
                     <th scope="col">Precio Total</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Registro registro: Datos.listado){    
                   
                    
                    %>
                    <tr> 
                         <th scope="row">1</th>
                        <td><%out.print(registro.getArticulo());%></td>
                        <td><%out.print(registro.getSelect());%></td>
                        <td><%out.print(registro.getNombre());%></td>
                        <td><%out.print(registro.getExistencia());%></td>
                        <td><%out.print(registro.getPrecio());%></td>
                        <td><%out.print(registro.getCosto());%></td>
                        <td><%out.print(registro.getTotal());%></td>
                        <td><%out.print(registro.getTotal2());%></td>
                       
                    </tr>
                    <%}%>
            </tbody>
        </table>
            <br/>
            <table  class="table">
                <tr>
                    <td>
                        <textarea cols="60" rows="10"><%
                            for(Registro registro: Datos.listado){
                                out.print(registro.toString());
                                
                            }
                        %>
                        </textarea>
                    </td>
                    
                </tr>
                
                
            </table>
                        <form action="index.html" method="post">
                        <button type="submit" class="btn btn-success">Retroceder</button>
                        </form>
                         <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
