<?php
session_start();
require_once("../logica/cliente.php");

$response = ["ok" => false];

try {

    $cliente = new Cliente();
    $cliente->setIdEstadoCliente($_POST['id_estado_cliente'] ?? 1);
    $cliente->setNombre2($_POST['nombre_2']);
    $cliente->setApellido2($_POST['apellido_2']);

    $cliente->setIdCiudad($_POST['id_ciudad']);
    $cliente->setIdBarrio($_POST['id_barrio']);
    $cliente->setRed($_POST['prefijo']);
    $cliente->setIdEstadoCliente($_POST['id_estado_cliente']);
    $cliente->setIdPlan($_POST['id_plan']);
    $cliente->setIdTipoIdentificacion($_POST['id_tipo_identificacion']);
    $cliente->setIdentificacion($_POST['identificacion']);
    $cliente->setExpDoc($_POST['fecha_expedicion']);
    $cliente->setNombre1($_POST['nombre_1']);
    $cliente->setNombre2($_POST['nombre_2']);
    $cliente->setApellido1($_POST['apellido_1']);
    $cliente->setApellido2($_POST['apellido_2']);
    $cliente->setTelefono1($_POST['telefono_1']);
    $cliente->setTelefono2($_POST['telefono_2']);
    $cliente->setCorreo($_POST['correo']);
    $cliente->setDireccion($_POST['direccion']);
    $cliente->setFechaInstalacion($_POST['fecha_instalacion']);
    $cliente->setDia_corte($_POST['dia_corte']);
    $cliente->setIdUsuario($_SESSION['id_usuario']);

    $cliente->crear();

    $response["ok"] = true;
} catch (Exception $e) {
    $response["error"] = $e->getMessage();
}

echo json_encode($response);
