<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro dia del Internet</title>
   

    </head>
   
        <h1>Registro dia del Internet</h1>
        <p><a href="inicio?action=add">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Seminarios</th>
                <th>Confirmado</th>
                <th>Fecha de Inscripción</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="estudiante" items="${estudiantes}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombre}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.sseminarios}</td>
                    <td><input type="checkbox" name="confirmado" <c:if test="${estudiante.confirmado}">checked</c:if> /></td>

                        <td>${estudiante.fechaInscripcion}</td>
                    <td><a href="inicio?action=edit&id=${estudiante.id}">Editar</a></td>
                    <td><a href="inicio?action=delete&id=${estudiante.id}" onclick="return(confirm('¿Estás seguro de eliminar este estudiante?'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
