<?php

require_once("../logica/cliente.php");

$cliente = new Cliente($_POST["id_cliente"]);

$cliente->setNombre1($_POST["nombre_1"]);
$cliente->setApellido1($_POST["apellido_1"]);
$cliente->setTelefono1($_POST["telefono_1"]);
$cliente->setTelefono2($_POST["telefono_2"]);
$cliente->setDireccion($_POST["direccion"]);
$cliente->setDia_corte($_POST["dia_corte"]);

$cliente->setIdEstadoCliente($_POST["id_estado_cliente"]);
$cliente->setIdPlan($_POST["id_plan"]);
$cliente->setIdBarrio($_POST["id_barrio"]);

$r = $cliente->actualizar();

echo json_encode(["ok"=>$r]);