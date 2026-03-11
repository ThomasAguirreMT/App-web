<?php

require_once("../logica/cliente.php");

$c = new Cliente();

$c->setIdCliente($_POST["id_cliente"]);
$c->setNombre1($_POST["nombre_1"]);
$c->setApellido1($_POST["apellido_1"]);
$c->setTelefono1($_POST["telefono_1"]);
$c->setTelefono2($_POST["telefono_2"]);
$c->setDireccion($_POST["direccion"]);
$c->setDia_corte($_POST["dia_corte"]);
$c->setIdEstadoCliente($_POST["id_estado_cliente"]);
$c->setIdPlan($_POST["id_plan"]);
$c->setIdBarrio($_POST["id_barrio"]);

$r = $c->actualizar();

echo json_encode([
"ok"=>$r
]);