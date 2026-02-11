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


    // 🔹 NUEVOS (para crear cliente)
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
    }

    // ===================== GETTERS / SETTERS NUEVOS =====================

    public function getIdCiudad()
    {
        return $this->id_ciudad;
    }
    public function getIdBarrio()
    {
        return $this->id_barrio;
    }
    public function getRed()
    {
        return $this->red;
    }
    public function getNumCliente()
    {
        return $this->num_cliente;
    }
    public function getIdTipoIdentificacion()
    {
        return $this->id_tipo_identificacion;
    }
    public function getExpDoc()
    {
        return $this->exp_doc;
    }
    public function getCorreo()
    {
        return $this->correo;
    }
    public function getFechaInstalacion()
    {
        return $this->fecha_instalacion;
    }
    public function setNombre2($nombre_2)
    {
        $this->nombre_2 = $nombre_2;
    }
    public function setApellido2($apellido_2)
    {
        $this->apellido_2 = $apellido_2;
    }
    public function setTelefono2($telefono_2)
    {
        $this->telefono_2 = $telefono_2;
    }

    // ===================== SETTERS / GETTERS NUEVOS =====================

    public function setIdCiudad($id)
    {
        $this->id_ciudad = $id;
    }
    public function setIdBarrio($id)
    {
        $this->id_barrio = $id;
    }
    public function setRed($red)
    {
        $this->red = $red;
    }
    public function setNumCliente($num)
    {
        $this->num_cliente = $num;
    }
    public function setIdTipoIdentificacion($id)
    {
        $this->id_tipo_identificacion = $id;
    }
    public function setExpDoc($fecha)
    {
        $this->exp_doc = $fecha;
    }
    public function setCorreo($correo)
    {
        $this->correo = $correo;
    }
    public function setFechaInstalacion($fecha)
    {
        $this->fecha_instalacion = $fecha;
    }


    public function setIdPlan($id_plan)
    {
        $this->id_plan = $id_plan;
    }

    public function getIdPlan()
    {
        return $this->id_plan;
    }

    public function setIdUsuario($id_usuario)
    {
        $this->id_usuario = $id_usuario;
    }

    public function getIdUsuario()
    {
        return $this->id_usuario;
    }

    // ===================== GETTERS EXISTENTES =====================

    public function getId_Cliente()
    {
        return $this->id_cliente;
    }

    public function getNombre1()
    {
        return $this->nombre_1;
    }

    public function getApellido1()
    {
        return $this->apellido_1;
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

    // ===================== SETTERS USADOS EN CREAR =====================

    public function setNombre1($nombre_1)
    {
        $this->nombre_1 = $nombre_1;
    }

    public function setApellido1($apellido_1)
    {
        $this->apellido_1 = $apellido_1;
    }

    public function setIdentificacion($identificacion)
    {
        $this->identificacion = $identificacion;
    }

    public function setTelefono1($telefono_1)
    {
        $this->telefono_1 = $telefono_1;
    }

    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;
    }

    public function setDia_corte($dia_corte)
    {
        $this->dia_corte = $dia_corte;
    }

    public function setIdEstadoCliente($id_estado_cliente)
    {
        $this->id_estado_cliente = $id_estado_cliente;
    }

    public function getNombre2() {
    return $this->nombre_2;
}

public function getApellido2() {
    return $this->apellido_2;
}


    // ===================== MÉTODOS =====================

    public function consultarActivos()
    {
        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $conexion->ejecutar($dao->consultar());

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


    public function cambiarEstado($estado)
    {
        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $resultado = $conexion->ejecutar(
            $dao->cambiarEstado($this->id_cliente, $estado)
        );
        $conexion->cerrar();

        if ($resultado) {
            $this->id_estado_cliente = $estado;
        }

        return $resultado;
    }

    public function crear()
    {
        $conexion = new Conexion();
        $dao = new ClienteDAO();

        $conexion->abrir();
        $resultado = $conexion->ejecutar($dao->insertar($this));
        $conexion->cerrar();

        return $resultado;
    }
}
