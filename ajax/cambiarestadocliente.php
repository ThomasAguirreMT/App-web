<?php
header('Content-Type: application/json');
require_once(__DIR__ . "/../logica/cliente.php");

$idCliente   = $_POST["idCliente"] ?? null;
$estadoNuevo = $_POST["estado"] ?? null;

if (!$idCliente || !$estadoNuevo) {
    echo json_encode(["ok" => false]);
    exit;
}

$cliente = new Cliente($idCliente);
$cliente->cambiarEstado($estadoNuevo);

$icono = ($estadoNuevo == 1)
    ? "<i class='fa-solid fa-check text-success fs-4'></i>"
    : "<i class='fa-solid fa-x text-danger fs-4'></i>";

echo json_encode([
    "ok" => true,
    "icono" => $icono
]);