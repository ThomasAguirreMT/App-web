<?php
class UsuarioDAO {

    public function login($usuario, $password) {
        return "
            SELECT 
                u.id_usuario,
                up.usuario_login,
                CONCAT(u.nombre_1, ' ', u.apellido_1) AS nombre,
                p.perfil
            FROM usuario_has_profile up
            INNER JOIN usuario u ON u.id_usuario = up.id_usuario
            INNER JOIN perfil p ON p.id_perfil = up.id_perfil
            WHERE TRIM(up.usuario_login) = TRIM('$usuario')
              AND TRIM(up.pass_login) = TRIM('$password')
              AND up.id_estado_usuario = 1
            LIMIT 1
        ";
    }

}