<?php
echo "<p>IT WORKS!</p>";
echo "<hr>";

$enlace = mysqli_connect("mysql", "root", "sunway", "arcux");

if (!$enlace) {
  echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
  echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
  echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
  exit;
}

echo "Éxito: Se realizó una conexión apropiada a MySQL! La base de datos arcux es genial." . PHP_EOL;
echo "Información del host: " . mysqli_get_host_info($enlace) . PHP_EOL;

mysqli_close($enlace);
?>
