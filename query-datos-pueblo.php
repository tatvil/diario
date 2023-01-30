<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form>
        <input type="search" name="pueblo">
        <input type="submit" value="Buscar">
    </form>
    <?php
    if (isset($_GET['pueblo']))
        {
        $pueblo=$_GET['pueblo'];
    
        $conexion = mysqli_connect ('localhost','root','','hispania');
        if (!$conexion) echo 'error';
        $sql="SELECT municipios.nombre, provincias.provincia
            FROM municipios 
            JOIN provincias ON municipios.id_provincia = provincias.id_provincia
            WHERE nombre like '%$pueblo%';";
        $resultado = mysqli_query($conexion,$sql);
        echo "<br><strong> Encontrados ".mysqli_num_rows($resultado)." municipios con ".strtoupper($pueblo)."</strong><br><br>";
        ?>
        <table>
        <tr>
            <th margin="5px">Municipios</th>
            <th margin="5px">Provincia</th>
        </tr>
        <tr>
        <?php
        while($row = mysqli_fetch_assoc($resultado))
            {
            echo "<tr><td><center>".$row['nombre'] ."</center></td><td><center>". $row["provincia"]. "</center></td></tr>";
            }
        ?>
        </table>
        <?php
        $conexion->close();
        }
        
    ?>
</body>
</html>