<?php

require_once(__DIR__ . "/../persistencia/conexion.php");
require_once(__DIR__ . "/../persistencia/clienteDAO.php");

class Cliente
{

    private $id_cliente;
    private $nombre_1;
    private $nombre_2;
    private $apellido_1;
    private $apellido_2;
    private $identificacion;
    private $id_estado_cliente;
    private $plan;
    private $valor;
    private $dia_corte;
    private $direccion;
    private $telefono_1;
    private $telefono_2;
    private $codigo;

    private $id_ciudad;
    private $id_barrio;
    private $red;
    private $num_cliente;
    private $id_tipo_identificacion;
    private $exp_doc;
    private $correo;
    private $fecha_instalacion;

    private $id_plan;
    private $id_usuario;

    public function __construct(
        $id_cliente = 0,
        $nombre_1 = "",
        $nombre_2 = "",
        $apellido_1 = "",
        $apellido_2 = "",
        $identificacion = "",
        $id_estado_cliente = "",
        $plan = "",
        $valor = 0,
        $dia_corte = "",
        $direccion = "",
        $telefono_1 = "",
        $telefono_2 = "",
        $codigo = ""
    )
    {

        $this->id_cliente = $id_cliente;
        $this->nombre_1 = $nombre_1;
        $this->nombre_2 = $nombre_2;
        $this->apellido_1 = $apellido_1;
        $this->apellido_2 = $apellido_2;
        $this->identificacion = $identificacion;
        $this->id_estado_cliente = $id_estado_cliente;
        $this->plan = $plan;
        $this->valor = $valor;
        $this->dia_corte = $dia_corte;
        $this->direccion = $direccion;
        $this->telefono_1 = $telefono_1;
        $this->telefono_2 = $telefono_2;
        $this->codigo = $codigo;

    }

    /* ================= GETTERS ================= */

    public function getId_Cliente(){ return $this->id_cliente; }
    public function getNombre1(){ return $this->nombre_1; }
    public function getNombre2(){ return $this->nombre_2; }
    public function getApellido1(){ return $this->apellido_1; }
    public function getApellido2(){ return $this->apellido_2; }
    public function getIdentificacion(){ return $this->identificacion; }
    public function getIdEstadoCliente(){ return $this->id_estado_cliente; }
    public function getPlan(){ return $this->plan; }
    public function getValor(){ return $this->valor; }
    public function getDia_corte(){ return $this->dia_corte; }
    public function getDireccion(){ return $this->direccion; }
    public function getTelefono1(){ return $this->telefono_1; }
    public function getTelefono2(){ return $this->telefono_2; }
    public function getCodigo(){ return $this->codigo; }

    public function getIdPlan(){ return $this->id_plan; }
    public function getIdBarrio(){ return $this->id_barrio; }
    public function getCorreo(){
    return $this->correo;
}


    /* ================= SETTERS ================= */

    public function setIdCliente($id){ $this->id_cliente = $id; }
    public function setNombre1($v){ $this->nombre_1 = $v; }
    public function setNombre2($v){ $this->nombre_2 = $v; }
    public function setApellido1($v){ $this->apellido_1 = $v; }
    public function setApellido2($v){ $this->apellido_2 = $v; }
    public function setTelefono1($v){ $this->telefono_1 = $v; }
    public function setTelefono2($v){ $this->telefono_2 = $v; }
    public function setDireccion($v){ $this->direccion = $v; }
    public function setDia_corte($v){ $this->dia_corte = $v; }
    public function setIdEstadoCliente($v){ $this->id_estado_cliente = $v; }

    public function setIdPlan($id){ $this->id_plan = $id; }
    public function setIdBarrio($id){ $this->id_barrio = $id; }

public function setCorreo($correo){
    $this->correo = $correo;
}
    /* ================= CONSULTAR CLIENTES ================= */

    public function consultarActivos()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultar());

        $clientes = [];

        while(($fila = $conexion->registro()) != null){

            $c = new Cliente(

                $fila[0], // id_cliente
                $fila[3], // nombre
                $fila[4], // nombre2
                $fila[5], // apellido
                $fila[6], // apellido2
                $fila[7], // identificacion
                $fila[8], // estado
                $fila[9], // plan
                $fila[10], // valor
                $fila[11], // dia corte
                $fila[12], // direccion
                $fila[13], // telefono1
                $fila[14], // telefono2
                $fila[15]  // codigo

            );

            $c->setIdPlan($fila[1]);
            $c->setIdBarrio($fila[2]);

            $clientes[] = $c;

        }

        $conexion->cerrar();

        return $clientes;

    }

    /* ================= CONSULTAR CORTES ================= */

    public function consultarCortes()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultarCortes());

        $clientes = [];

        while(($fila = $conexion->registro()) != null){

            $clientes[] = new Cliente(
                $fila[0],
                $fila[1],
                $fila[2],
                $fila[3],
                $fila[4],
                $fila[5],
                $fila[6],
                $fila[7],
                $fila[8],
                $fila[9],
                $fila[10],
                $fila[11],
                $fila[12],
                $fila[13]
            );

        }

        $conexion->cerrar();

        return $clientes;

    }

    /* ================= CAMBIAR ESTADO ================= */

    public function cambiarEstado($estado)
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();

        $resultado = $conexion->ejecutar(
            $dao->cambiarEstado($this->id_cliente,$estado)
        );

        $conexion->cerrar();

        return $resultado;

    }

    /* ================= CREAR ================= */

    public function crear()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $resultado = $conexion->ejecutar($dao->insertar($this));
        $conexion->cerrar();

        return $resultado;

    }

    /* ================= ACTUALIZAR ================= */

    public function actualizar()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $resultado = $conexion->ejecutar($dao->actualizar($this));
        $conexion->cerrar();

        return $resultado;

    }

}