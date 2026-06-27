<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JAKS</title>
</head>
<body>
    <h1>hola mundo esta es mi primera aplicacion web con electron, que brujeria es estooooo tacooos tacooooos!</h1>
    <h3>estos son los datos de la tabla </h3>
   
</body>
</html>

<!-- importar la conexion a la base de datos -->
<?php
   include 'conn.php';

   //consulta a sql
   $sqlconsultakev = $conn->query( "SELECT * FROM kev" );
   //$sqlconsultakev = new mysqli($host,$user,$password, $datadase)

   //verifica errores
   if($sqlconsultakev === false) {
       die("Error en la consulta sql: " . $conn->error);
   };
   if($sqlconsultakev->num_rows === 0) {
       echo "No se encontraron resultados en la tabla  'pruebas' .";
   }
   else
      //echo "Se encontraron resultados en la tabla 'pruebas' .";
        while($fila =$sqlconsultakev->fetch_assoc()){
            echo "Comida: " . $fila["COMIDA"] . " - Bebidas: " . $fila["Bebidas"] ;
        ?>
            <table border="1">
                <tr>
                <tr>
                    <td>ID</td>
                    <td>usuario</td>
                    <td>password</td>
                </tr>
                <tr>
                   <td><?php echo $fila['COMIDA']; ?></td>
                   <td><?php  echo $fila['Bebidas']; ?></td>
                   
             </tr>
            </table>
            <?php     
        }
    
   //consulta a sql
    


?>

