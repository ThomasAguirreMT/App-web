<?php
session_start();

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (!isset($_SESSION['id_usuario'])) {
    header("Location: autenticacion/login.php");
    exit;
}

require_once("logica/cliente.php");
require_once("logica/plan.php");
require_once("logica/ciudad.php");
require_once("logica/barrio.php");

include("presentacion/menuAdministrador.php");

/* ===== DATOS ===== */

$cliente = new Cliente();
$clientes = $cliente->consultarActivos();

$planObj = new Plan();
$planes = $planObj->consultar();

$ciudadObj = new Ciudad();
$ciudades = $ciudadObj->consultar();

$barrioObj = new Barrio();
$barrios = $barrioObj->consultar();

?>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <title>Clientes</title>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <link rel="stylesheet"
        href="https://cdn.datatables.net/1.13.8/css/jquery.dataTables.min.css">

    <script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

</head>

<body>

    <div class="table-responsive p-3">

        <table id="clientes" class="table table-striped table-hover">

            <thead>

                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Identificación</th>
                    <th>Precio</th>
                    <th>Código</th>
                    <th class="text-center">Estado</th>
                    <th class="text-center">Acción</th>
                    <th>Día corte</th>
                    <th>Plan</th>
                    <th>Dirección</th>
                    <th>Teléfono 1</th>
                    <th>Teléfono 2</th>
                    <th>Editar</th>
                </tr>

            </thead>

            <tbody>

                <?php foreach ($clientes as $c) { ?>

                    <tr>

                        <td><?= $c->getNombre1() ?></td>
                        <td><?= $c->getApellido1() ?></td>
                        <td><?= $c->getIdentificacion() ?></td>
                        <td><?= number_format($c->getValor()) ?></td>
                        <td><?= $c->getCodigo() ?></td>

                        <td class="text-center" id="estado-<?= $c->getId_Cliente() ?>">

                            <?= $c->getIdEstadoCliente() == 1
                                ? "<i class='fa-solid fa-check text-success'></i>"
                                : "<i class='fa-solid fa-x text-danger'></i>" ?>

                        </td>

                        <td class="text-center">

                            <a href="#"
                                class="cambiarEstado"
                                data-id="<?= $c->getId_Cliente() ?>"
                                data-estado="<?= $c->getIdEstadoCliente() == 1 ? 2 : 1 ?>">

                                <?= $c->getIdEstadoCliente() == 1
                                    ? "<i class='fa-regular fa-circle-xmark text-danger'></i>"
                                    : "<i class='fa-regular fa-circle-check text-success'></i>" ?>

                            </a>

                        </td>

                        <td><?= $c->getDia_corte() ?></td>
                        <td><?= $c->getPlan() ?></td>
                        <td><?= $c->getDireccion() ?></td>
                        <td><?= $c->getTelefono1() ?></td>
                        <td><?= $c->getTelefono2() ?></td>

                        <td>

                            <a href="#"
                                class="editarCliente"
                                data-id="<?= $c->getId_Cliente() ?>"
                                data-nombre="<?= $c->getNombre1() ?>"
                                data-apellido="<?= $c->getApellido1() ?>"
                                data-telefono="<?= $c->getTelefono1() ?>"
                                data-telefono2="<?= $c->getTelefono2() ?>"
                                data-direccion="<?= $c->getDireccion() ?>"
                                data-diadecorte="<?= $c->getDia_corte() ?>"
                                data-estado="<?= $c->getIdEstadoCliente() ?>"
                                data-plan="<?= $c->getIdPlan() ?>"
                                data-barrio="<?= $c->getIdBarrio() ?>"
                                data-num="<?= $c->getNumCliente() ?>"
                                data-codigo="<?= $c->getCodigo() ?>"
                                data-bs-toggle="modal"
                                data-bs-target="#modalEditarCliente">
                                <i class="fa-solid fa-pen text-primary"></i>
                            </a>

                        </td>

                    </tr>

                <?php } ?>

            </tbody>

        </table>

    </div>



    <!-- MODAL EDITAR -->

    <div class="modal fade" id="modalEditarCliente">

        <div class="modal-dialog modal-lg">

            <div class="modal-content">

                <div class="modal-header bg-warning">

                    <h5 class="modal-title">
                        Editar Cliente
                    </h5>

                    <button class="btn-close" data-bs-dismiss="modal"></button>

                </div>


                <form id="formEditarCliente">

                    <input type="hidden" name="id_cliente" id="edit_id_cliente">

                    <div class="modal-body">

                        <div class="row g-3">

                            <div class="col-md-6">
                                <label>Nombre</label>
                                <input type="text" name="nombre_1" id="edit_nombre" class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Apellido</label>
                                <input type="text" name="apellido_1" id="edit_apellido" class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Teléfono</label>
                                <input type="text" name="telefono_1" id="edit_tel1" class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Teléfono 2</label>
                                <input type="text" name="telefono_2" id="edit_tel2" class="form-control">
                            </div>

                            <div class="col-md-12">
                                <label>Dirección</label>
                                <input type="text" name="direccion" id="edit_direccion" class="form-control">
                            </div>

                            <div class="col-md-4">
                                <label>Día corte</label>
                                <input type="number" name="dia_corte" id="edit_corte" class="form-control">
                            </div>

                            <div class="col-md-4">
                                <label>Estado</label>

                                <select name="id_estado_cliente" id="edit_estado" class="form-control">

                                    <option value="1">Activo</option>
                                    <option value="2">Suspendido</option>

                                </select>

                            </div>

                            <div class="col-md-4">
                                <label>Plan</label>

                                <select name="id_plan" id="edit_plan" class="form-control">

                                    <?php foreach ($planes as $p) { ?>

                                        <option value="<?= $p[0] ?>">
                                            <?= $p[1] ?> - $<?= number_format($p[2]) ?>
                                        </option>

                                    <?php } ?>

                                </select>

                            </div>

                            <div class="col-md-6">
                                <label>Barrio</label>

                                <select name="id_barrio" id="edit_barrio" class="form-control">

                                    <?php foreach ($barrios as $b) { ?>

                                        <option value="<?= $b[0] ?>">
                                            <?= $b[1] ?>
                                        </option>

                                    <?php } ?>

                                </select>

                            </div>
                            <div class="col-md-6">
                                <label>Código actual</label>
                                <input type="text" id="codigo_completo" class="form-control" readonly>
                            </div>
                            <div class="col-md-6">
                                <label>Número cliente</label>
                                <input type="number" name="num_cliente" id="edit_num_cliente" class="form-control">
                            </div>



                        </div>

                    </div>


                    <div class="modal-footer">

                        <button class="btn btn-secondary" data-bs-dismiss="modal">
                            Cancelar
                        </button>

                        <button type="submit" class="btn btn-warning">
                            Guardar cambios
                        </button>

                    </div>

                </form>

            </div>

        </div>

    </div>



    <script>
        /* DATATABLE */

        $(document).ready(function() {

            $('#clientes').DataTable({
                language: {
                    url: "https://cdn.datatables.net/plug-ins/1.13.8/i18n/es-ES.json"
                }
            });

        });


        /* CARGAR DATOS MODAL */

        $(document).on("click", ".editarCliente", function() {

            $("#edit_id_cliente").val($(this).data("id"));
            $("#edit_nombre").val($(this).data("nombre"));
            $("#edit_apellido").val($(this).data("apellido"));
            $("#edit_tel1").val($(this).data("telefono"));
            $("#edit_tel2").val($(this).data("telefono2"));
            $("#edit_direccion").val($(this).data("direccion"));
            $("#edit_corte").val($(this).data("diadecorte"));

            $("#edit_estado").val($(this).data("estado"));
            $("#edit_plan").val($(this).data("plan"));
            $("#edit_barrio").val($(this).data("barrio"));

            $("#edit_num_cliente").val($(this).data("num"));
            $("#codigo_completo").val($(this).data("codigo"));

        });


        /* ACTUALIZAR */

        $(document).on("submit", "#formEditarCliente", function(e) {

            e.preventDefault();

            console.log($(this).serialize()); // 👈 para ver si envía datos

            $.ajax({

                url: "ajax/editarcliente.php",
                type: "POST",
                dataType: "json",
                data: $(this).serialize(),

                success: function(r) {

                    console.log(r); // 👈 ver respuesta

                    if (r.ok) {

                        alert("Cliente actualizado");
                        location.reload();

                    } else {

                        alert(r.error);

                    }

                },

                error: function(xhr) {

                    console.log(xhr.responseText); // 👈 aquí verás el error PHP
                    alert("Error en AJAX");

                }

            });

        });

        /* ================= CAMBIAR ESTADO ================= */

        $(document).on("click", ".cambiarEstado", function(e) {

            e.preventDefault();

            let btn = $(this);
            let id = btn.data("id");
            let estado = btn.data("estado");

            $.ajax({

                url: "ajax/cambiarestadocliente.php",
                type: "POST",
                dataType: "json",
                data: {
                    idCliente: id,
                    estado: estado
                },

                success: function(r) {

                    if (r.ok) {

                        $("#estado-" + id).html(r.icono);

                        btn.data("estado", estado == 1 ? 2 : 1);

                        btn.html(
                            estado == 1 ?
                            "<i class='fa-regular fa-circle-xmark text-danger'></i>" :
                            "<i class='fa-regular fa-circle-check text-success'></i>"
                        );

                    } else {

                        alert("No se pudo cambiar el estado");

                    }

                },

                error: function(xhr) {

                    console.log(xhr.responseText);
                    alert("Error en AJAX estado");

                }

            });

        });
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>