<?php

class Conexion
{

    private $conexion;
    private $resultado;

    public function abrir()
    {

        $this->conexion = new mysqli(
            "localhost",
            "root",
            "",
            "Webmasteer",

        );

        /*

    public function abrir() {

      $this->conexion = new mysqli(
    "localhost",
    "thomas",
    "1022998351",
    "WebProv",
    3306
);
*/


        if ($this->conexion->connect_error) {
            die("Error de conexión MySQL: " . $this->conexion->connect_error);
        }
    }

    public function ejecutar($sql)
    {

        if ($this->conexion === null) {
            throw new Exception("La conexión NO está abierta");
        }

        $this->resultado = $this->conexion->query($sql);

        if (!$this->resultado) {
            throw new Exception("SQL ERROR: " . $this->conexion->error);
        }

        return $this->resultado;
    }

  public function registro()
{
    return mysqli_fetch_assoc($this->resultado);
}
    
    public function filas()
    {
        return $this->resultado->num_rows;
    }

    public function cerrar()
    {
        if ($this->conexion !== null) {
            $this->conexion->close();
        }
    }
}
