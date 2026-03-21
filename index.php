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
require_once("logica/estado.php");


include("presentacion/menuAdministrador.php");
require_once("logica/tipo_identificacion.php");


/* ===== DATOS ===== */

$cliente = new Cliente();
$clientes = $cliente->consultarActivos();

$planObj = new Plan();
$planes = $planObj->consultar();

$ciudadObj = new Ciudad();
$ciudades = $ciudadObj->consultar();

$barrioObj = new Barrio();
$barrios = $barrioObj->consultar();

$estadoObj = new Estado();
$estado = $estadoObj->consultar();

$tipo = new TipoIdentificacion();
$tipo_identificacion = $tipo->consultar();
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

    <!-- MODAL CREAR -->

    <div class="text-end">
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalCrearCliente">
            <i class="fa-solid fa-user-plus"></i> Crear cliente
        </button>
    </div>
    </div>

    <!-- ================= MODAL ================= -->
    <div class="modal fade" id="modalCrearCliente" tabindex="-1">
        <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">

                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title">
                        <i class="fa fa-user-plus"></i> Creación del Cliente
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <form id="formCrearCliente">

                    <!-- OCULTOS -->
                    <input type="hidden" name="prefijo" id="prefijo">
                    <input type="hidden" name="red" id="red">
                    <input type="hidden" name="id_estado_cliente" value="1">



                    <div class="modal-body">
                        <div class="row g-3">

                            <div class="col-md-4">
                                <label class="form-label">Ciudad</label>
                                <select name="id_ciudad" id="id_ciudad" class="form-select" required>
                                    <option value="">Seleccione...</option>
                                    <?php foreach ($ciudades as $c) { ?>
                                        <option value="<?= $c[0] ?>"><?= $c[1] ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label">Barrio</label>
                                <select name="id_barrio" id="id_barrio" class="form-select" required>
                                    <option value="">Seleccione ciudad primero</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label">Plan</label>
                                <select name="id_plan" class="form-select" required>
                                    <option value="">Seleccione...</option>
                                    <?php foreach ($planes as $p) { ?>
                                        <option value="<?= $p[0] ?>">
                                            <?= $p[1] ?> - $<?= number_format($p[2]) ?>
                                        </option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Nombre</label>
                                <input type="text" name="nombre_1" class="form-control" required>
                            </div>


                            <div class="col-md-3">
                                <label class="form-label">Nombre_2</label>
                                <input type="text" name="nombre_2" class="form-control" required>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Apellido</label>
                                <input type="text" name="apellido_1" class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Apellido_2</label>
                                <input type="text" name="apellido_2" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Tipo identificación</label>
                                <select name="id_tipo_identificacion" class="form-select" required>
                                    <option value="">Seleccione...</option>

                                    <?php foreach ($tipo_identificacion as $t) { ?>
                                        <option value="<?= $t[0] ?>">
                                            <?= $t[1] ?>
                                        </option>
                                    <?php } ?>

                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Identificación</label>
                                <input type="text" name="identificacion" class="form-control" required>
                            </div>


                            <div class="col-md-3">
                                <label class="form-label">Teléfono</label>
                                <input type="text" name="telefono_1" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Teléfono 2</label>
                                <input type="text" name="telefono_2" class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Dirección</label>
                                <input type="text" name="direccion" class="form-control" required>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Día Corte</label>
                                <input type="number" name="dia_corte" class="form-control" min="1" max="31" required>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Fecha Instalación</label>
                                <input type="date" name="fecha_instalacion" class="form-control" required>
                            </div>



                            <div class="col-md-4">
                                <label class="form-label">Correo</label>
                                <input type="email" name="correo" class="form-control" required>
                            </div>

                            <div class="col-md-4">
                                <label class="form-label">Fecha expedición documento</label>
                                <input type="date" name="fecha_expedicion" class="form-control" required>
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">
                            <i class="fa fa-save"></i> Crear
                        </button>
                    </div>

                </form>
            </div>
        </div>
    </div>






    <!-- MODAL EDITAR -->

    <div class="modal fade" id="modalEditarCliente">

        <div class="modal-dialog modal-lg">

            <div class="modal-content">

                <div class="modal-header bg-primary">

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

                                    <?php foreach ($estado as $e) { ?>

                                        <option value="<?= $e[0] ?>">
                                            <?= $e[1] ?>
                                        </option>

                                    <?php } ?>

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

                        <button type="submit" class="btn btn-primary">
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

        //CREAR CLIENTE
        /* CAMBIO DE ESTADO */
        $(document).on("click", ".cambiarEstado", function(e) {
            e.preventDefault();

            let btn = $(this);
            let id = btn.data("id");
            let estado = btn.data("estado");

            $.post("ajax/cambiarestadocliente.php", {
                idCliente: id,
                estado: estado
            }, function(r) {
                if (r.ok) {
                    $("#estado-" + id).html(r.icono);
                    btn.data("estado", estado == 1 ? 2 : 1);
                    btn.html(estado == 1 ?
                        "<i class='fa-regular fa-circle-xmark text-danger fs-3'></i>" :
                        "<i class='fa-regular fa-circle-check text-success fs-3'></i>"
                    );
                } else {
                    alert("No se pudo cambiar el estado");
                }
            }, "json");
        });

        /* BARRIOS POR CIUDAD + PREFIJO */
        $("#id_ciudad").on("change", function() {

            let idCiudad = $(this).val();
            $("#id_barrio").html('<option>Cargando...</option>');

            $.post("ajax/buscarBarrios.php", {
                id_ciudad: idCiudad
            }, function(data) {

                let html = '<option value="">Seleccione...</option>';

                data.forEach(b => {
                    html += `<option value="${b[0]}" data-prefijo="${b[2]}" data-red="${b[3]}">${b[1]}</option>`;
                });

                $("#id_barrio").html(html);
            }, "json");
        });

        /* CARGAR PREFIJO Y RED */
        $("#id_barrio").on("change", function() {
            let opt = $(this).find(":selected");
            $("#prefijo").val(opt.data("prefijo"));
            $("#red").val(opt.data("red"));
        });

        /* CREAR CLIENTE */
        $(document).on("submit", "#formCrearCliente", function(e) {
            e.preventDefault();

            console.log("SUBMIT OK");

            $.ajax({
                url: "ajax/crearcliente.php",
                type: "POST",
                dataType: "json",
                data: $(this).serialize(),
                success: function(r) {
                    console.log(r);

                    if (r.ok) {
                        alert("Cliente creado correctamente");
                        location.reload();
                    } else {
                        alert(r.error);
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                    alert("Error AJAX al crear cliente");
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

            console.log($(this).serialize());

            $.ajax({

                url: "ajax/editarcliente.php",
                type: "POST",
                dataType: "json",
                data: $(this).serialize(),

                success: function(r) {

                    console.log(r);

                    if (r.ok) {

                        alert("Cliente actualizado");
                        location.reload();

                    } else {

                        alert(r.error);

                    }

                },

                error: function(xhr) {

                    console.log(xhr.responseText);
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