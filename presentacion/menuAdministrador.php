<?php
if (session_status() === PHP_SESSION_NONE) {
  session_start();
}


?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
  .navbar-brand img {
    transition: transform 0.2s ease;
  }

  .navbar-brand:hover img {
    transform: scale(1.05);
  }

  .navbar-nav .nav-link {
    font-weight: 500;
  }

  .navbar-nav .nav-link i {
    margin-right: 5px;
  }
</style>



<?php
if (session_status() === PHP_SESSION_NONE) {
  session_start();
}
?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
  .navbar-brand img {
    transition: transform 0.2s ease;
  }

  .navbar-brand:hover img {
    transform: scale(1.05);
  }

  .navbar-nav .nav-link {
    font-weight: 500;
  }

  .navbar-nav .nav-link i {
    margin-right: 5px;
  }
</style>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">

  <div class="container-fluid">

    <a class="navbar-brand d-flex align-items-center gap-2 fw-bold" href="dashboard.php">
      <img src="/img/LogoWeb.png" style="height:40px;">
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarGestion">
      <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarGestion">

      <ul class="navbar-nav me-auto">

        <li class="nav-item">
          <a class="nav-link active" href="dashboard.php">
            <i class="fa-solid fa-gauge"></i> Dashboard
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="clientes.php">
            <i class="fa-solid fa-users"></i> Clientes
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="planes.php">
            <i class="fa-solid fa-wifi"></i> Planes
          </a>
        </li>


        <li class="nav-item dropdown">

          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
            <i class="fa-solid fa-ticket"></i> Tickets
          </a>

          <ul class="dropdown-menu">

            <li>
              <a class="dropdown-item" href="presentacion/Cliente/ConsultarCortes.php">
                Cortes
              </a>
            </li>

            <li>
              <a class="dropdown-item" href="tickets_cortes.php">
                Cortes
              </a>
            </li>

            <li>
              <a class="dropdown-item" href="tickets_retirados.php">
                Retirados
              </a>
            </li>

          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="reportes.php">
            <i class="fa-solid fa-chart-line"></i> Reportes
          </a>
        </li>

      </ul>


      <ul class="navbar-nav ms-auto">

        <li class="nav-item dropdown">

          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
            <i class="fa-solid fa-user"></i>
            <?= $_SESSION['nombre'] ?? 'Usuario' ?>
          </a>

          <ul class="dropdown-menu dropdown-menu-end">

            <li class="px-3 py-2">

              <div class="fw-bold">
                <?= $_SESSION['nombre'] ?>
              </div>

              <small class="text-muted">
                <?= $_SESSION['perfil'] ?>
              </small>

            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item" href="perfil.php">
                Perfil
              </a>
            </li>

            <li>
              <a class="dropdown-item text-danger" href="autenticacion/logout.php">
                Cerrar sesión
              </a>
            </li>

          </ul>

        </li>

      </ul>

    </div>

  </div>

</nav>