<?php
require_once(__DIR__ . "/conexion.php");

class TipoIdentificacionDAO
{
    public function consultar()
    {
        return "
        SELECT id_tipo_identificacion, tipo_identificacion, valor_identificacion
        FROM tipo_identificacion
        ORDER BY tipo_identificacion ASC
        ";
    }
}