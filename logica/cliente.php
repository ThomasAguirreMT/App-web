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
        $codigo = "",
        $correo = "",
        $id_ciudad = "",
        $red = "",
        $prefijo = "",
        $id_tipo_identificacion = "",
        $fecha_expedicion = "",
        $fecha_instalacion = "",
            $id_usuario = 0
    ) {

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
        $this->correo = $correo;
        $this->id_ciudad = $id_ciudad;
        $this->red = $red;
        $this->prefijo = $prefijo;
        $this->id_tipo_identificacion = $id_tipo_identificacion;
        $this->fecha_expedicion = $fecha_expedicion;
        $this->fecha_instalacion = $fecha_instalacion;
        $this->id_usuario = $id_usuario;
        


    }

    /* ================= GETTERS ================= */

    public function getId_Cliente()
    {
        return $this->id_cliente;
    }
    public function getNombre1()
    {
        return $this->nombre_1;
    }
    public function getNombre2()
    {
        return $this->nombre_2;
    }
    public function getApellido1()
    {
        return $this->apellido_1;
    }
    public function getApellido2()
    {
        return $this->apellido_2;
    }
    public function getIdentificacion()
    {
        return $this->identificacion;
    }
    public function getIdEstadoCliente()
    {
        return $this->id_estado_cliente;
    }
    public function getPlan()
    {
        return $this->plan;
    }
    public function getValor()
    {
        return $this->valor;
    }
    public function getDia_corte()
    {
        return $this->dia_corte;
    }
    public function getDireccion()
    {
        return $this->direccion;
    }
    public function getTelefono1()
    {
        return $this->telefono_1;
    }
    public function getTelefono2()
    {
        return $this->telefono_2;
    }
    public function getCodigo()
    {
        return $this->codigo;
    }

    public function getNumCliente()
    {
        return $this->num_cliente;
    }

    public function getIdPlan()
    {
        return $this->id_plan;
    }
    public function getIdBarrio()
    {
        return $this->id_barrio;
    }
    public function getCorreo()
    {
        return $this->correo;
    }
    public function getidciudad()
    {
        return $this->id_ciudad;
    }
    public function getRed()
    {
        return $this->prefijo;
    }

    public function getIdTipoIdentificacion()
    {
        return $this->id_tipo_identificacion;
    }
    public function getExpDoc()
    {
        return $this->fecha_expedicion;
    }
    public function getFechaInstalacion()
    {
        return $this->fecha_instalacion;
    }

    public function getIdUsuario()
    {
        return $this->id_usuario;
    }
    /* ================= SETTERS ================= */

    public function setIdCliente($v)
    {
        $this->id_cliente = $v;
    }
    public function setNombre1($v)
    {
        $this->nombre_1 = $v;
    }
    public function setNombre2($v)
    {
        $this->nombre_2 = $v;
    }
    public function setApellido1($v)
    {
        $this->apellido_1 = $v;
    }
    public function setApellido2($v)
    {
        $this->apellido_2 = $v;
    }
    public function setTelefono1($v)
    {
        $this->telefono_1 = $v;
    }
    public function setTelefono2($v)
    {
        $this->telefono_2 = $v;
    }
    public function setDireccion($v)
    {
        $this->direccion = $v;
    }
    public function setDia_corte($v)
    {
        $this->dia_corte = $v;
    }
    public function setIdEstadoCliente($v)
    {
        $this->id_estado_cliente = $v;
    }

    public function setNumCliente($v)
    {
        $this->num_cliente = $v;
    }

    public function setIdPlan($v)
    {
        $this->id_plan = $v;
    }
    public function setIdBarrio($v)
    {
        $this->id_barrio = $v;
    }

    public function setIdentificacion($v)
    {
        $this->identificacion = $v;
    }
    public function setCorreo($v)
    {
        $this->correo = $v;
    }
    public function setidciudad($v)
    {
        $this->id_ciudad = $v;
    }
    public function setRed($v)
    {
        $this->prefijo = $v;
    }
    public function setIdTipoIdentificacion($v)
    {
        $this->id_tipo_identificacion = $v;
    }
    public function setExpDoc($v)
    {
        $this->fecha_expedicion = $v;
    }
    public function setFechaInstalacion($v)
    {
        $this->fecha_instalacion = $v;
    }
    public function setIdUsuario($v)
    {
        $this->id_usuario = $v;
    }
    /* ================= CONSULTAR CLIENTES ================= */

    public function consultarActivos()
    {

        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultar());

        $clientes = [];

        while (($fila = $conexion->registro()) != null) {

            $c = new Cliente(

                $fila[0], // id_cliente
                $fila[1], // nombre
                $fila[2], // nombre2
                $fila[3], // apellido
                $fila[4], // apellido2
                $fila[5], // identificacion
                $fila[6], // estado
                $fila[7], // plan
                $fila[8], // valor
                $fila[9], // dia corte
                $fila[10], // direccion
                $fila[11], // telefono1
                $fila[12], // telefono2
                $fila[14]  // codigo

            );

            $c->setNumCliente($fila[13]);

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

        while (($fila = $conexion->registro()) != null) {

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
            $dao->cambiarEstado($this->id_cliente, $estado)
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
