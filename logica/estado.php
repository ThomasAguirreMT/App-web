<?php
require_once("persistencia/conexion.php");
require_once("persistencia/estadoDAO.php");

class Estado
{
    private $id;
    private $estado_cliente;
    private $color;

    public function __construct($id_estado_cliente = 0, $estado_cliente = "", $color = "")
    {
        $this->id = $id_estado_cliente;
        $this->estado_cliente = $estado_cliente;
        $this->color = $color;
    }

    public function __getid_estado_cliente()
    {
        return $this->id;
    }

    public function __getEstado_cliente()
    {
        return $this->estado_cliente;
    }

    public function __getcolor()
    {
        return $this->color;
    }
    
    public function __setid_estado_cliente($v)
    {
        $this->id = $v;
    }
    public function __setEstado_cliente($v)
    {
        $this->estado_cliente = $v;
    }
    public function __setcolor($v)
    {
        $this->color = $v;
    }

     /* ================= CONSULTAR ESTADOS ================= */
     
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