<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once("../../logica/cliente.php");


$cliente = new Cliente();
$clientes = $cliente->consultarCortes();
require_once(__DIR__ . "/../menuAdministrador.php");





?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes Web</title>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- DataTables CSS (OBLIGATORIO PARA VER BUSCADOR) -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.8/css/jquery.dataTables.min.css">

    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">



</head>

<body>

    <div class="table-responsive">

        <table id="clientes" class="table table-striped table-hover">

            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Identificación</th>
                    <th>Precio</th>
                    <th>Estado</th>
                    <th>dia corte</th>
                    <th>Acciones</th>
                    <th>Dirección</th>

                    <th>codigo</th>

                </tr>
            </thead>

            <tbody>
                <?php foreach ($clientes as $c) { ?>
                    <tr>
                        <td><?= $c->getNombre1() ?></td>
                        <td><?= $c->getApellido1() ?></td>
                        <td><?= $c->getIdentificacion() ?></td>
                        <td><?= $c->getValor() ?></td>



                        <!-- ESTADO -->
                        <td class="text-center" id="estado-<?= $c->getId_Cliente() ?>">
                            <?= $c->getIdEstadoCliente() == 1
                                ? "<i class='fa-solid fa-check text-success fs-4'></i>"
                                : "<i class='fa-solid fa-x text-danger fs-4'></i>" ?>
                        </td>

                        <!-- CÓDIGO -->
                        <td><?= $c->getCodigo() ?></td>


                        <!-- ACCIONES -->
                        <td class="text-center">
                            <?php if ($c->getIdEstadoCliente() == 1) { ?>
                                <a href="#"
                                    class="cambiarEstado"
                                    data-id="<?= $c->getId_Cliente() ?>"
                                    data-estado="2"
                                    title="Deshabilitar">
                                    <i class="fa-regular fa-circle-xmark text-danger fs-3"></i>
                                </a>
                            <?php } else { ?>
                                <a href="#"
                                    class="cambiarEstado"
                                    data-id="<?= $c->getId_Cliente() ?>"
                                    data-estado="1"
                                    title="Habilitar">
                                    <i class="fa-regular fa-circle-check text-success fs-3"></i>
                                </a>
                            <?php } ?>
                        </td>
                        <td><?= $c->getDia_corte() ?></td>
                        <td><?= $c->getDireccion() ?></td>




                    </tr>

                <?php } ?>

            </tbody>


        </table>
    </div>





    <script>
        let tabla;

        $(document).ready(function() {
            tabla = $('#clientes').DataTable({
                searching: true,
                ordering: true,
                paging: true,
                language: {
                    url: "//cdn.datatables.net/plug-ins/1.13.8/i18n/es-ES.json"
                }
            });
        });
    </script>
    <script>
        $(document).on("click", ".cambiarEstado", function(e) {
            e.preventDefault();

            let boton = $(this);
            let fila = tabla.row(boton.closest("tr"));
            let id = boton.data("id");
            let estado = boton.data("estado");

            $.ajax({
                url: "/WEB/ajax/cambiarestadocliente.php",
                type: "POST",
                dataType: "json",
                data: {
                    idCliente: id,
                    estado: estado
                },
                success: function(response) {
                        if (response.ok) {

                            let filaNode = fila.node();

                            // 🔄 Estado
                            $(filaNode).find("td:eq(4)").html(
                                `<div class="text-center">${response.icono}</div>`
                            );

                            // 🔄 Acción
                            let nuevoBoton = (estado == 1) ?
                                `<a href="#" class="cambiarEstado" data-id="${id}" data-estado="2" title="Deshabilitar">
                <i class="fa-regular fa-circle-xmark text-danger fs-3"></i>
               </a>` :
                                `<a href="#" class="cambiarEstado" data-id="${id}" data-estado="1" title="Habilitar">
                <i class="fa-regular fa-circle-check text-success fs-3"></i>
               </a>`;

                            $(filaNode).find("td:eq(6)").html(
                                `<div class="text-center">${nuevoBoton}</div>`
                            );

                        } else {
                            alert("No se pudo cambiar el estado");
                        }
                    }

                    ,
                error: function(xhr) {
                    console.log(xhr.responseText);
                    alert("Error AJAX");
                }
            });
            $(filaNode).addClass("table-warning");
            setTimeout(() => {
                $(filaNode).removeClass("table-warning");
            }, 500);

        });
    </script>




</body>

</html>