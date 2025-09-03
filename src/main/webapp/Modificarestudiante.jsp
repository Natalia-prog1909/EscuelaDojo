<%-- 
    Document   : Modificarestudiante
    Created on : 2/09/2025, 10:22:02 p. m.
    Author     : dzapa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Informacion -Nuevo Estudiante</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    </head>
      <body style="background-color: #FFEC8B">
            <div class="container">
                
                <form action="" method="">
                    <div class="card mt-3">
                        <div class="card-body">
                            <div class="d-flex justity-content-center">
                        <a href="Estudiantes.jsp" class="btn btn-block btn-warning">Volver</a> 
                        <hr>
                        <center>Registro de Estudiante</center>
                            </div>
                             <div class="col">
                                <label>Id</label>
                                <input type="text" name="id" class="form-control"placeholder=" Digite numero de identificacion del estudiante" required>    
                             </div>
                            <div class="col">
                                <label>Nombre
                                </label>
                                <input type="text" name="nombre" class="form-control"placeholder=" Digite el nombre del estudiante" required>    
                            </div>  
                            <div class="col">
                                <label>Apellidos
                                </label>
                                <input type="text" name="apellidos" class="form-control"placeholder=" Digite los apellidos del estudiante" required>    
                            </div>
                            <div class="col">
                                <label>Edad
                                </label>
                                <input type="text" name="edad" class="form-control"placeholder=" Digite la edad del estudiante" required>    
                            </div>     
                            <div class="col">
                                <label>Modalidad</label>
                                <input type="text" name="modalidad" class="form-control"placeholder=" Digite la modalidad del estudiante" required>    
                            </div>
                            <div class="col">
                                <label>Telefono
                                </label>
                                <input type="text" name="telefono" class="form-control"placeholder=" Digite telefono del estudiante" required>    
                            </div> 
                            <div class="card mt-3">
                                <button type="submit" name="action" value="Guardar" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </div>
            </form>
       </body>
</html>