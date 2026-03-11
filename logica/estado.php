<?php
require_once("persistencia/conexion.php");
require_once("persistencia/estadoDAO.php");

class Estado
{
    private $id;
    private $descripcion;
    private $color;

    public function __construct($id_estado_cliente = 0, $estado_cliente = "", $color = "")
    {
        $this->id = $id_estado_cliente;
        $this->descripcion = $estado_cliente;
        $this->color = $color;
    }

    public function __getid_estado_cliente()
    {
        return $this->id;
    }

    public function __getdescripcion()
    {
        return $this->descripcion;
    }

    public function __getcolor()
    {
        return $this->color;
    }

    public function consultar()
    {
        $conexion = new Conexion();
        $dao = new estadoDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultarEstado());

        $estado = [];

        while ($fila = $conexion->registro()) {
            $estado[] = $fila;
        }

        $conexion->cerrar();

        return $estado;
    }
}