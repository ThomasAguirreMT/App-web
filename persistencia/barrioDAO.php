<?php



require_once("persistencia/conexion.php");
require_once("persistencia/estadoDAO.php");


class barrioDAO{
  
    public function consultarBarrios(){
        return "SELECT id_barrio, barrio, prefijo, red FROM barrio";
    }
}