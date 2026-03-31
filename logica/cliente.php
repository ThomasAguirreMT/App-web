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
    private $num_cliente;
    private $id_plan;
    private $id_barrio;
    private $correo;
    private $id_ciudad;
    private $red;
    private $prefijo;
    private $id_tipo_identificacion;
    private $fecha_expedicion;
    private $fecha_instalacion;
    private $id_usuario;
    private $estado_cliente;


public function __construct($id_cliente = null)
{
    if ($id_cliente != null) {
        $this->id_cliente = $id_cliente;
    }
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
    public function getNumCliente(){ return $this->num_cliente; }
    public function getIdPlan(){ return $this->id_plan; }
    public function getIdBarrio(){ return $this->id_barrio; }
    public function getCorreo(){ return $this->correo; }
    public function getIdCiudad(){ return $this->id_ciudad; }
    public function getRed(){ return $this->red; }
    public function getPrefijo(){ return $this->prefijo; }
    public function getIdTipoIdentificacion(){ return $this->id_tipo_identificacion; }
    public function getExpDoc(){ return $this->fecha_expedicion; }
    public function getFechaInstalacion(){ return $this->fecha_instalacion; }
    public function getIdUsuario(){ return $this->id_usuario; }
    public function getEstadoCliente(){ return $this->estado_cliente; }


    /* ================= SETTERS ================= */

    public function setIdCliente($v){ $this->id_cliente = $v; }
    public function setNombre1($v){ $this->nombre_1 = $v; }
    public function setNombre2($v){ $this->nombre_2 = $v; }
    public function setApellido1($v){ $this->apellido_1 = $v; }
    public function setApellido2($v){ $this->apellido_2 = $v; }
    public function setIdentificacion($v){ $this->identificacion = $v; }
    public function setIdEstadoCliente($v){ $this->id_estado_cliente = $v; }
    public function setPlan($v){ $this->plan = $v; }
    public function setValor($v){ $this->valor = $v; }
    public function setDia_corte($v){ $this->dia_corte = $v; }
    public function setDireccion($v){ $this->direccion = $v; }
    public function setTelefono1($v){ $this->telefono_1 = $v; }
    public function setTelefono2($v){ $this->telefono_2 = $v; }
    public function setCodigo($v){ $this->codigo = $v; }
    public function setNumCliente($v){ $this->num_cliente = $v; }
    public function setIdPlan($v){ $this->id_plan = $v; }
    public function setIdBarrio($v){ $this->id_barrio = $v; }
    public function setCorreo($v){ $this->correo = $v; }
    public function setIdCiudad($v){ $this->id_ciudad = $v; }
    public function setRed($v){ $this->red = $v; }
    public function setPrefijo($v){ $this->prefijo = $v; }
    public function setIdTipoIdentificacion($v){ $this->id_tipo_identificacion = $v; }
    public function setExpDoc($v){ $this->fecha_expedicion = $v; }
    public function setFechaInstalacion($v){ $this->fecha_instalacion = $v; }
    public function setIdUsuario($v){ $this->id_usuario = $v; }
    public function setEstadoCliente($v){ $this->estado_cliente = $v; }


    /* ================= CONSULTAR ================= */

    public function consultarActivos()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultar());

        $clientes = [];

        while (($fila = $conexion->registro()) != null) {

            $c = new Cliente();

            $c->setIdCliente($fila["id_cliente"]);
            $c->setNombre1($fila["nombre_1"]);
            $c->setNombre2($fila["nombre_2"]);
            $c->setApellido1($fila["apellido_1"]);
            $c->setApellido2($fila["apellido_2"]);
            $c->setIdentificacion($fila["identificacion"]);
            $c->setIdEstadoCliente($fila["id_estado_cliente"]);
            $c->setPlan($fila["PLAN1"]);
            $c->setValor($fila["valor"]);
            $c->setDia_corte($fila["dia_corte"]);
            $c->setDireccion($fila["direccion"]);
            $c->setTelefono1($fila["telefono_1"]);
            $c->setTelefono2($fila["telefono_2"]);
            $c->setCodigo($fila["codigo"]);
            $c->setEstadoCliente($fila["estado_cliente"]);

            $clientes[] = $c;
        }

        $conexion->cerrar();

        return $clientes;
    }

    
    public function consultarCortes()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultarCortes());

        $clientes = [];

        while (($fila = $conexion->registro()) != null) {

            $c = new Cliente();

            $c->setIdCliente($fila["id_cliente"]);
            $c->setNombre1($fila["nombre_1"]);
            $c->setNombre2($fila["nombre_2"]);
            $c->setApellido1($fila["apellido_1"]);
            $c->setApellido2($fila["apellido_2"]);
            $c->setIdentificacion($fila["identificacion"]);
            $c->setIdEstadoCliente($fila["id_estado_cliente"]);
            $c->setPlan($fila["PLAN1"]);
            $c->setValor($fila["valor"]);
            $c->setDia_corte($fila["dia_corte"]);
            $c->setDireccion($fila["direccion"]);
            $c->setTelefono1($fila["telefono_1"]);
            $c->setTelefono2($fila["telefono_2"]);
            $c->setCodigo($fila["codigo"]);
            $c->setEstadoCliente($fila["estado_cliente"]);

            $clientes[] = $c;
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

        $r = $conexion->ejecutar(
            $dao->cambiarEstado($this->id_cliente, $estado)
        );

        $conexion->cerrar();

        return $r;
    }


    /* ================= CREAR ================= */

    public function crear()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $r = $conexion->ejecutar($dao->insertar($this));
        $conexion->cerrar();

        return $r;
    }


    /* ================= ACTUALIZAR ================= */

    public function actualizar()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $r = $conexion->ejecutar($dao->actualizar($this));
        $conexion->cerrar();

        return $r;
    }
}