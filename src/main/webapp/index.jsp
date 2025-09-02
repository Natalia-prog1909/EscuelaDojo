<%-- 
    Document   : index
    Created on : 29/08/2025, 5:26:52 p. m.
    Author     : dzapa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <title>Sistema de informacion Escuela Dojo</title>
         
    </head>
    <body style="background-color: #CDBE70;"
        <h1>Bienvenidos a escuela de karate DOJO</h1>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    </body>   
</html>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tabla de Estudiantes</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <h2 class="mb-4 text-center">Lista de Estudiantes</h2>

  <div class="table-responsive">
    <table class="table table-striped table-hover table-bordered align-middle">
      <thead class="table-dark text-center">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Identificacion</th>
          <th scope="col">Nombre</th>
          <th scope="col">Apellido</th>
          <th scope="col">Edad</th>
          <th scope="col">Modalidad</th>
          <th scope="col">Correo Electronico</th>
          <th scope="col">Telefono</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>43458752</td>
          <td>Juan</td>
          <td>Restrepo</td>
          <td>20</td>
          <td>Karate Kyokushin</td>
          <td>juan458res@gmail.com</td>
          <td>321 4585369</td>
          <td class="text-center">
            <button class="btn btn-sm btn-primary">Editar</button>
            <button class="btn btn-sm btn-danger">Eliminar</button>
          </td>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gestión de Estudiantes</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <h2 class="mb-4 text-center">Gestión de Estudiantes</h2>

  <!-- Formulario -->
  <div class="card mb-4">
    <div class="card-header bg-dark text-white">Agregar Estudiante</div>
    <div class="card-body">
      <form id="studentForm">
        <div class="row g-3">
          <div class="col-md-3">
            <input type="text" id="identificacion" class="form-control" placeholder="Identificacion" required>
          </div>
          <div class="col-md-3">
            <input type="text" id="nombre" class="form-control" placeholder="Nombre" required>
          </div>
          <div class="col-md-2">
            <input type="apellido" id="edad" class="form-control" placeholder="Apellido" required>
          </div>
          <div class="col-md-3">
            <input type="text" id="edad" class="form-control" placeholder="Edad" required>
          </div>
          <div class="col-md-4">
            <input type="text" id="modalidad" class="form-control" placeholder="Modalidad" required>
          </div>
          <div class="col-md-5">
            <input type="text" id="correo electronico" class="form-control" placeholder="Correo Electronico" required>
          </div>
          <div class="col-md-6">
            <input type="text" id="telefono" class="form-control" placeholder="Telefono" required>
          </div>
          <div class="col-md-1 d-grid">
            <button type="submit" class="btn btn-success">Añadir</button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <!-- Tabla -->
  <div class="table-responsive">
    <table class="table table-striped table-hover table-bordered align-middle">
      <thead class="table-dark text-center">
        <tr>
          <th>#</th>
          <th>Identificacion</th>
          <th>Nombre</th>
          <th>Apellido</th>
          <th>Edad</th>
          <th>Modalidad</th>
          <th>Correo Electronico</th>
          <th>Telefono</th>
        </tr>
      </thead>
      <tbody id="studentTable">
        <!-- Filas dinámicas -->
      </tbody>
    </table>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
  let contador = 0;
  const form = document.getElementById('studentForm');
  const table = document.getElementById('studentTable');

  form.addEventListener('submit', function(e) {
    e.preventDefault();
    contador++;

    const nombre = document.getElementById('nombre').value;
    const apellido = document.getElementById('apellido').value;
    const edad = document.getElementById('edad').value;
    const carrera = document.getElementById('carrera').value;

    const fila = document.createElement('tr');
    fila.innerHTML = `
      <th scope="row">${contador}</th>
      <td>${identificacion}</td>  
      <td>${nombre}</td>
      <td>${apellido}</td>
      <td>${edad}</td>
      <td>${modalidad}</td>
      <td>${correo-electronico}</td>
      <td>${telefono}</td>
      <td class="text-center">
        <button class="btn btn-sm btn-primary editar">Editar</button>
        <button class="btn btn-sm btn-danger eliminar">Eliminar</button>
      </td>
    `;

    table.appendChild(fila);
    form.reset();
  });

  // Delegación de eventos para Editar y Eliminar
  table.addEventListener('click', function(e) {
    if (e.target.classList.contains('eliminar')) {
      e.target.closest('tr').remove();
    }
    if (e.target.classList.contains('editar')) {
      const fila = e.target.closest('tr');
      document.getElementById('identificacion').value = fila.children[1].textContent;
      document.getElementById('nombre').value = fila.children[2].textContent;
      document.getElementById('apellido').value = fila.children[3].textContent;
      document.getElementById('edad').value = fila.children[4].textContent;
      document.getElementById('modalidad').value = fila.children[5].textContent;
      document.getElementById('correo-electronico').value = fila.children[6].textContent;
      document.getElementById('telefono').value = fila.children[7].textContent;
      fila.remove();
    }
  });
</script>
</body>
</html>
