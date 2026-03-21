<?php

require_once(__DIR__ . "/../persistencia/conexion.php");
require_once(__DIR__ . "/../persistencia/tipoIdentificacionDAO.php");

class TipoIdentificacion
{
    public function consultar()
    {
        $conexion = new Conexion();
        $dao = new TipoIdentificacionDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultar());

        $datos = [];

        while (($fila = $conexion->registro()) != null) {
            $datos[] = $fila;
        }

        $conexion->cerrar();

        return $datos;
    }
}