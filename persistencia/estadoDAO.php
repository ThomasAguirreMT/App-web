<?php


require_once("persistencia/conexion.php");
require_once("persistencia/estadoDAO.php");
class estadoDAO{
    public function consultarEstado(){
        return "SELECT id_estado_cliente, estado_cliente, color 
        FROM estado_cliente";
    }




}


?>