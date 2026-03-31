<?php
session_start();

require_once(__DIR__ . "/../persistencia/conexion.php");
require_once(__DIR__ . "/../persistencia/usuarioDAO.php");
require_once(__DIR__ . "/../logica/usuario.php");

$usuario = $_POST['usuario'] ?? '';
$password = $_POST['password'] ?? '';

$conexion = new Conexion();
$dao = new UsuarioDAO();

$conexion->abrir();
$conexion->ejecutar($dao->login($usuario, $password));

if ($conexion->filas() == 1) {

    $fila = $conexion->registro();

 $usuarioObj = new Usuario(
    $fila["id_usuario"],
    $fila["usuario_login"],
    $fila["nombre"],
    $fila["perfil"]
);
    $_SESSION['id_usuario'] = $usuarioObj->getId();
    $_SESSION['usuario'] = $usuarioObj->getUsuario();
    $_SESSION['nombre']  = $usuarioObj->getNombre();
    $_SESSION['perfil']  = $usuarioObj->getPerfil();

    $conexion->cerrar();

    header("Location: ../index.php");
    exit;

} else {

    $conexion->cerrar();

    header("Location: ../autenticacion/login.php?error=1");
    exit;
}