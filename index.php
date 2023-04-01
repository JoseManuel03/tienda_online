<?php
    require 'config/config.php';
    require 'config/database.php';
    $db = new Database();
    $con = $db -> conectar();

    $sql = $con -> prepare("SELECT id, nombre, precio FROM productos WHERE activo = 1");
    $sql -> execute();
    $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Master</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" 
    crossorigin="anonymous">

    <link rel="stylesheet" href="css/estilos.css">
</head>

<body>
<header data-bs-theme="dark">
  <div class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a href="#" class="navbar-brand">
        <strong>HomeMaster</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" 
       aria-expanded="false" aria-label="asd">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarHeader">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a href="#" class="nav-link active">catalogo</a>
            </li>

            <li class="nav-item">
                <a href="#" class="nav-link">contacto</a>
            </li>
        </ul>
        <a href="carrito.php" class="btn btn-primary">carrito</a>
      </div>
    </div>
  </div>
</header>

<main>
    <div class="container">
     <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <?php foreach ($resultado as $row) { ?>   
        <div class="col">
          <div class="card shadow-sm">

            <?php 
                $id = $row['id'];
                $imagen = "imagenes/productos/" . $id . "/producto.jpg";
                
                if(!file_exists($imagen)){
                    $imagen = "imagenes/no-photo.png";
                }
            ?>

            <img src="<?php echo $imagen; ?>" width="100%">
            <div class="card-body">
              <h5 class="card-title"><?php echo $row['nombre']; ?></h5>
              <p class="card-text">$ <?php echo number_format($row['precio'], 2, '.', ','); ?></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <a href="detalles.php?id=<?php echo $row['id']; ?>&token=<?php 
                 echo hash_hmac('sha1', $row['id'], KEY_TOKEN); ?>" class="btn btn-primary">Detalles</a>
                </div>
                 <a href="" class="btn btn-success">Agregar</a>
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>
        </div>
    </div>      

</main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" 
    crossorigin="anonymous"></script>
    
</body>
</html>