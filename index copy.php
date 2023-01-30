<?php
include 'header.php';

include "funciones.php";

# El tiempo

#Declaracion de variables
    # Variables del tiempo

$totalLibros=numLibros();

$fecha_actual = strtotime(date("d-m-Y"));
$anno_actual=date("Y");
$anno=date("Y");
$mes=date("m");
$messincero=date("n");
$dia=date("d");
$diasincero=date("j");
$diasemana=date("w");
$meses=array("domingo","lunes","martes","miercoles","jueves","viernes","sabado");
$mesesanno=array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

# Cabecera
echo "<h1>".$meses[$diasemana]." ".$dia." de ".$mesesanno[$messincero-1]." de ".$anno_actual."</h1>";
$santodeldia=santodeldia($diasincero,$messincero);
echo "<h3 center>".$santodeldia."</h3>";

?>
<div class="grid-container">
    <div class="item1">
        <?php crearMes ($mes,$anno);  # Generacion del calendario del mes actual ?>
    </div>
    <div class="item2">
            <?php
                insertarDatosTiempo(); # Datos del tiempo    
                elTiempo($dia,$mes,$anno); # Visualizamos datos del tiempo
    echo "</div>";
        if ($diasemana==3)
            {
            ?>
    <div class="item3">
            <h4>DATOS COVID: </h4>
                <ul>
                    <li>Las Rozas:</li>
                    <li>Ampolla:</li>
                    <li>Alfas del Pi:</li>
                </ul>
    <?php   }       ?>
    </div>
</div>
<hr style="border-top: 2px solid black;">
<?php
# Lectura diaria del evangelio
        if ( ($anno%3) == 0) {$ciclo="C";}

        $evangeliodeldia=lecturadiaria($anno,$messincero,$diasincero);
        $evangelio=$capitulo=$desde=$hasta=1;

        $evangelio = $evangeliodeldia[0];
        $capitulo = $evangeliodeldia[1];
        $desde = $evangeliodeldia[2];
        $hasta = $evangeliodeldia[3];
        $nombreEvangelio=librosBiblia($evangelio); 
        $santodeldia=santodeldia($diasincero,$messincero);

        echo "<div class='container-lg'>";
            echo "<quote>".$nombreEvangelio.": ".$capitulo.".".$desde."-".$hasta."</quote>";
            echo "<div class='container-lg'>";
                leerBiblia($evangelio,$capitulo,$desde,$hasta);
            echo "</div>";
        echo "</div>";

//        include 'footer.php';
?>
