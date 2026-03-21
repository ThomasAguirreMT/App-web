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
        $fila[0], // id_usuario
        $fila[1], // usuario_login
        $fila[2], // nombre completo
        $fila[3]  // perfil
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
    header("Location: ../autenticacion/logout.php");
    exit;
}
