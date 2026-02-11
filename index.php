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

include("presentacion/menuAdministrador.php");

/* ===== DATOS ===== */
$cliente = new Cliente();
$clientes = $cliente->consultarActivos();

$planObj = new Plan();
$planes = $planObj->consultar();

$ciudadObj = new Ciudad();
$ciudades = $ciudadObj->consultar();
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Clientes Web</title>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.8/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <div class="table-responsive p-3">
        <table id="clientes" class="table table-striped table-hover align-middle">
            <thead >
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
                                ? "<i class='fa-solid fa-check text-success fs-4'></i>"
                                : "<i class='fa-solid fa-x text-danger fs-4'></i>" ?>
                        </td>

                        <td class="text-center">
                            <a href="#"
                                class="cambiarEstado"
                                data-id="<?= $c->getId_Cliente() ?>"
                                data-estado="<?= $c->getIdEstadoCliente() == 1 ? 2 : 1 ?>">
                                <?= $c->getIdEstadoCliente() == 1
                                    ? "<i class='fa-regular fa-circle-xmark text-danger fs-3'></i>"
                                    : "<i class='fa-regular fa-circle-check text-success fs-3'></i>" ?>
                            </a>
                        </td>

                        <td><?= $c->getDia_corte() ?></td>
                        <td><?= $c->getPlan() ?></td>
                        <td><?= $c->getDireccion() ?></td>
                        <td><?= $c->getTelefono1() ?></td>
                        <td><?= $c->getTelefono2() ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

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
                        <i class="fa fa-user-plus"></i> Creación del Clientee
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <form id="formCrearCliente">

                    <!-- OCULTOS -->
                    <input type="hidden" name="prefijo" id="prefijo">
                    <input type="hidden" name="red" id="red">
                    <input type="hidden" name="id_estado_cliente" value="1">
                    <input type="hidden" name="id_tipo_identificacion" value="1">
                    <input type="hidden" name="nombre_2">
                    <input type="hidden" name="apellido_2">


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
                                <label class="form-label">Apellido</label>
                                <input type="text" name="apellido_1" class="form-control" required>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Identificación</label>
                                <input type="text" name="identificacion" class="form-control" required>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label">Teléfono</label>
                                <input type="text" name="telefono_1" class="form-control" required>
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
                                <label class="form-label">Teléfono 2</label>
                                <input type="text" name="telefono_2" class="form-control">
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

    <!-- ================= JS ================= -->
    <script>
        /* DATATABLE */
        $(document).ready(function() {
            $('#clientes').DataTable({
                language: {
                    url: "//cdn.datatables.net/plug-ins/1.13.8/i18n/es-ES.json"
                }
            });
        });

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

            console.log("SUBMIT OK"); // 👈 esto debe salir sí o sí

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
    </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>