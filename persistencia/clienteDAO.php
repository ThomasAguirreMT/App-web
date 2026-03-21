<?php
require_once(__DIR__ . "/conexion.php");
class ClienteDAO
{
    public function consultar()
    {
        return "
SELECT 
    c.id_cliente,
    c.nombre_1,
    c.nombre_2,
    c.apellido_1,
    c.apellido_2,
    c.identificacion,
    ec.id_estado_cliente,
    CONCAT(p.cantidad,'M ',p.obs) AS PLAN1,
    p.valor,
    c.dia_corte,
    c.direccion,
    c.telefono_1,
    c.telefono_2,
    c.num_cliente,
    CONCAT(ba.red, ba.prefijo, '0', c.num_cliente) AS codigo

FROM cliente c
JOIN barrio ba ON ba.id_barrio = c.id_barrio
JOIN estado_cliente ec ON ec.id_estado_cliente = c.id_estado_cliente
JOIN plan p ON p.id_plan = c.id_plan

WHERE c.id_estado_cliente IN
(1,2,3,4,5,6,7,8,9,10,
11,12,13,14,15,16,17,18,19,20,
21,22,23,24,25,26,27,28,29,30)
";
    }

    public function consultarCortes()
    {
        return "
       SELECT 
        
            c.id_cliente,
            c.nombre_1,
            c.nombre_2,
            c.apellido_1,
            c.apellido_2,
            c.identificacion,
            ec.id_estado_cliente,
            CONCAT(p.cantidad,'M ',p.obs) AS PLAN1, 
            p.valor,
            c.dia_corte,
            c.direccion,
            c.telefono_1,
            c.telefono_2,
            CONCAT(ba.red, ba.prefijo, '0', c.num_cliente) AS codigo


        FROM cliente c
        JOIN barrio ba ON ba.id_barrio = c.id_barrio
        JOIN estado_cliente ec ON ec.id_estado_cliente = c.id_estado_cliente
        JOIN plan p ON p.id_plan = c.id_plan

    WHERE c.id_estado_cliente IN (2)
             ";
    }



    public function activos()
    {
        return "
    SELECT 
    nombre_1,
    apellido_1,
    estado_cliente
    FROM cliente c
    INNER JOIN estado_cliente ec
    ON c.id_estado_cliente = ec.id_estado_cliente
    WHERE c.id_estado_cliente IN (1,2)";
    }


    public function cambiarEstado($idCliente, $estado)
    {
        return "UPDATE cliente 
            SET id_estado_cliente = $estado 
            WHERE id_cliente = $idCliente";
    }

    public function insertar($c)
    {
        return "
    INSERT INTO cliente (
        id_ciudad,
        id_barrio,
        red,
        num_cliente,
        id_estado_cliente,
        id_plan,
        id_tipo_identificacion,
        identificacion,
        exp_doc,
        nombre_1,
        nombre_2,
        apellido_1,
        apellido_2,
        telefono_1,
        telefono_2,
        correo,
        direccion,
        fecha_instalacion,
        dia_corte,
        fecha_creacion,
        id_usuario
    )
    SELECT
        {$c->getIdCiudad()},
        {$c->getIdBarrio()},
        '{$c->getRed()}',
        IFNULL(MAX(num_cliente), 0) + 1,
        {$c->getIdEstadoCliente()},
        {$c->getIdPlan()},
        {$c->getIdTipoIdentificacion()},
        '{$c->getIdentificacion()}',
        '{$c->getExpDoc()}',
        '{$c->getNombre1()}',
        '{$c->getNombre2()}',
        '{$c->getApellido1()}',
        '{$c->getApellido2()}',
        '{$c->getTelefono1()}',
        '{$c->getTelefono2()}',
        '{$c->getCorreo()}',
        '{$c->getDireccion()}',
        '{$c->getFechaInstalacion()}',
        {$c->getDia_corte()},
        NOW(),
        {$c->getIdUsuario()}
    FROM cliente
    WHERE id_barrio = {$c->getIdBarrio()}
    ";
    }



    public function actualizar($c)
    {
        return "
 UPDATE cliente SET
    nombre_1 = '{$c->getNombre1()}',
    nombre_2 = '{$c->getNombre2()}',
    apellido_1 = '{$c->getApellido1()}',
    apellido_2 = '{$c->getApellido2()}',
    telefono_1 = '{$c->getTelefono1()}',
    telefono_2 = '{$c->getTelefono2()}',
    direccion = '{$c->getDireccion()}',
    correo = '{$c->getCorreo()}',
    num_cliente = {$c->getNumCliente()},
    id_plan = {$c->getIdPlan()},
    id_estado_cliente = {$c->getIdEstadoCliente()},
    dia_corte = {$c->getDia_corte()},
    id_barrio = {$c->getIdBarrio()}
WHERE id_cliente = {$c->getId_Cliente()}
    ";
    }
}
