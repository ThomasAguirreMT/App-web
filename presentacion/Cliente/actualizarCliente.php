<?php

require_once("../logica/Cliente.php");

$cliente = new Cliente($_POST["id_cliente"]);

$cliente->setNombre1($_POST["nombre_1"]);
$cliente->setApellido1($_POST["apellido_1"]);
$cliente->setTelefono1($_POST["telefono_1"]);
$cliente->setDireccion($_POST["direccion"]);

$cliente->actualizar();

header("Location: clientes.php");   