<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Diario</title>
<!--    <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> 
</head>
<body>
<?php   include "funciones.php"; 
        menus ("diario");

# El tiempo
#Declaracion de variables
    # Variables del tiempo

$totalLibros=numLibros();

$fecha_actual = date("d-m-Y");
$anno_actual=date("Y",strtotime($fecha_actual));
$anno=date("Y",strtotime($fecha_actual));
$mes=date("m",strtotime($fecha_actual));
$messincero=date("n",strtotime($fecha_actual));
$dia=date("d",strtotime($fecha_actual));
$diasincero=date("j",strtotime($fecha_actual));
$diasemana=date("w",strtotime($fecha_actual));
$meses=array("domingo","lunes","martes","miercoles","jueves","viernes","sabado");
$mesesanno=array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

# Cabecera
?>
<div class="position-relative" style="padding:5%">
<?php
echo "<h1 class='position-absolute start-50 translate-middle-x'>".$meses[$diasemana]." ".$dia." de ".$mesesanno[$messincero-1]." de ".$anno_actual."</h1>";
?>
</div>
<div class="container">
    <div class="row justify-content-center">
    <div class="col border border-success rounded m-2 p-2 text-center">
        <?php crearMes ($mes,$anno);  # Generacion del calendario del mes actual ?>
    </div>
    
    <div class="col border border-success rounded m-2 p-2 text-center">
        <h3>El tiempo en Madrid</h3>
            <?php
                insertarDatosTiempo(); # Datos del tiempo ?>
                <table style='width: 100%;'>  
                    <?php elTiempo($dia,$mes,$anno); # Visualizamos datos del tiempo ?>
                </table>
        <br><a class="btn btn-success bounded m-2 p-2 text-center" href="../weather/">Histórico del tiempo</a>
    </div>
    <div class="col border border-success rounded m-2 p-2 text-center"><?php
        $cumples=BuscarCumple();
        if ($cumples!=""){echo "<p><strong>CUMPLEAÑOS</strong><br>".$cumples."</p><br>";}
        $santodeldia=santodeldia($diasincero,$messincero);
        if (isset($santodeldia)){echo "<p><strong>SANTORAL</strong><br>".$santodeldia."</p><br>";} 
        // Semana Santa
        $viernesSanto=BuscarViernesSanto($anno);
        $juevesSanto=date("d-m-Y",strtotime($viernesSanto."- 1 days"));
        $domingoRamos=date("d-m-Y",strtotime($viernesSanto."- 5 days"));
        $miercolesCeniza=date("d-m-Y",strtotime($domingoRamos."- 39 days"));
        $domingoResurreccion=date("d-m-Y",strtotime($viernesSanto."+ 2 days"));
        $lunesPascua=date("d-m-Y",strtotime($viernesSanto."+ 3 days"));

        if ($fecha_actual==$miercolesCeniza) {echo "<p>MIERCOLES DE CENIZA</p>";}
        if ($fecha_actual==$domingoRamos) {echo "<p>DOMINGO DE RAMOS</p>";} 
        if ($fecha_actual==$juevesSanto) {echo "<p>JUEVES SANTO</p>";}
        if ($fecha_actual==$viernesSanto) {echo "<p>VIERNES SANTO</p>";}
        if ($fecha_actual==$domingoResurreccion) {echo "<p>DOMINGO DE RESURRECCION</p>";}
        if ($fecha_actual==$lunesPascua) {echo "<p>LUNES DE PASCUA</p>";}

        ?>
    </div>
</div> <!-- col -->
<div class="row gx-4">
<div class="col border border-success rounded m-2 p-2 text-center">
    <?php
        if ($diasemana==1) // Si es lunes recoger datos vitales de salud (temp,SO2)
            {
            $oxigeno=$temperatura=0;$fecha=""; ?>
            <h4>DATOS VITALES DE SALUD</h4><br>
            <form action="" method="POST">
                <label for="fecha">Fecha:</label>
                <input type='date' name="fecha" id="fecha"><br>
                <label for="temperatura">Temperatura:</label>
                <input type='number' name="temperatura" id="temperatura" step="0.1" value=36 min=30 max=50><br>
                <label for="oxigeno">SO<sub>2</sub>:</label>
                <input type='number' name="oxigeno" id="oxigeno" value=100 min=70 max=100><br>
                <br><input type="submit" class="boton" value="Insertar">
            </form> 

    <?php
        if(isset($_POST['temperatura']))  {$temperatura = $_POST['temperatura'];}
        if(isset($_POST['fecha']))        {$fecha = $_POST['fecha'];}
        if(isset($_POST['oxigeno']))      {$oxigeno = $_POST['oxigeno'];}
        
        echo "<p>Datos: ".$fecha." ".$temperatura." ". $oxigeno."</p>";
        insertarDatoVital(1,'2',$temperatura,$fecha);
        insertarDatoVital(1,'3',$oxigeno,$fecha);
    ?>

    <?php   
            }     // Si es lunes  

            if ($diasemana==2) // Si es martes datos vitales de salud (tira de orina)
            {   ?>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-orina.php">TEST DE ORINA</a>
                <a class="btn btn-success rounded m-2 p-2" href="../covid/insertar-datos-covid.php">Insertar datos COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-peso.php">Peso</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/antigenos-covid.php">Prueba de antigenos COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-tension-arterial.php">Tensión Arterial</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-temperatura.php">Temperatura corporal</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-oxigeno.php">Saturación oxígeno</a>
    <?php   }     // Si es martes     
    
            
        if ($diasemana==3) // Si es miercoles recoger datos covid
            { ?>
                <a class="btn btn-success rounded m-2 p-2" href="../covid/insertar-datos-covid.php">INSERTAR DATOS COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-peso.php">Peso</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/antigenos-covid.php">Prueba de antigenos COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-tension-arterial.php">Tensión Arterial</a><a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-temperatura.php">Temperatura corporal</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-oxigeno.php">Saturación oxígeno</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-orina.php">Test de orina</a>
    <?php   }     // Si es miercoles     
    if ($diasemana==4) // Si es jueves recoger datos peso
            { ?>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-peso.php">PESO</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/antigenos-covid.php">Prueba de antigenos COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-tension-arterial.php">Tensión Arterial</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-temperatura.php">Temperatura corporal</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-oxigeno.php">Saturación oxígeno</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-orina.php">Test de orina</a>
                <a class="btn btn-success rounded m-2 p-2" href="../covid/insertar-datos-covid.php">Insertar datos COVID</a>
    <?php   }     // Si es jueves     
        if ($diasemana==5) // Si es viernes hacerse un test de antigenos
            { ?>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/antigenos-covid.php">PRUEBA DE ANTIGENOS COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-tension-arterial.php">Tensión Arterial</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-temperatura.php">Temperatura corporal</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-oxigeno.php">Saturación oxígeno</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-orina.php">Test de orina</a>
                <a class="btn btn-success rounded m-2 p-2" href="../covid/insertar-datos-covid.php">Insertar datos COVID</a>
                <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-peso.php">Peso</a>
<?php       }     // Si es viernes   
        if ($diasemana==6) // Si es sabado medirse la tensión arterial
            { ?>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-tension-arterial.php">TENSIÓN ARTERIAL</a>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-temperatura.php">Temperatura corporal</a>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-oxigeno.php">Saturación oxígeno</a>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-orina.php">Test de orina</a>
            <a class="btn btn-success rounded m-2 p-2" href="../covid/insertar-datos-covid.php">Insertar datos COVID</a>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/formulario-peso.php">Peso</a>
            <a class="btn btn-success rounded m-2 p-2" href="../salud/antigenos-covid.php">Prueba de antigenos COVID</a>
<?php       }     // Si es sabado  ?>
                <h4 class="header">LECTURA DEL DIA</h4><br>
<?php           $evangelio=$capitulo=$desde=$hasta=1;

// Ciclo
                switch ($anno%3) 
                    {
                    case 0: $ciclo="C"; break;
                    case 1: $ciclo="A"; break;
                    case 2: $ciclo="B"; break;
                    }
// Tiempo
// Tiempo de Adviento
//          - 4 semanas antes de Navidad
$navidad=$anno."/12/25";
$finNavidad=$anno."/01/09";
$diaSemanaNavidad=date("w",strtotime($navidad));
if ($diaSemanaNavidad==0) {$diaSemanaNavidad=7;}
$diasRestar=28+$diaSemanaNavidad;

$primerDomingoAdviento=date("Y/m/d",strtotime($navidad."- ".$diasRestar." days"));
if (date("Y/m/d",strtotime($fecha_actual))>=date("Y/m/d",strtotime($primerDomingoAdviento)) && date("Y/m/d",strtotime($fecha_actual))<=date("Y/m/d",strtotime($navidad)))
    {
        $tiempo="adviento";
        $semana_actual=date("W",strtotime($fecha_actual));
        $primera_semana=date("W",strtotime($primerDomingoAdviento));
        $semanaActual = $semana_actual - $primera_semana; 
        echo $semanaActual."º semana de ";
    }

// Tiempo de Navidad
//          - Desde el 25 de diciembre (nacimiento de Jesus) hasta el 9 de enero (bautismo del señor)

elseif (date("Y/m/d",strtotime($fecha_actual))>=$navidad || date("Y/m/d",strtotime($fecha_actual))<=$finNavidad)
    {
        $tiempo="navidad";
        $semana_actual=date("W",strtotime($fecha_actual));
        $primera_semana=date("W",strtotime($navidad));
        if ($fecha_actual < $finNavidad){ $semanaActual=$semana_actual+1; }
        else { $semanaActual = $semana_actual - $primera_semana +1; }
        echo $semanaActual."º semana de ";
    }
// Tiempo de Cuaresma: 
//          - 40 dias antes de la semana santa (viernes santo)
//          - Comienza el miercoles de ceniza

elseif (date("Y/m/d",strtotime($fecha_actual))>=date("Y/m/d",strtotime($miercolesCeniza)) && date("Y/m/d",strtotime($fecha_actual))<date("Y/m/d",strtotime($domingoRamos))) 
    {
        $tiempo="cuaresma";
        $semana_actual=date("W",strtotime($fecha_actual));
        $primera_semana=date("W",strtotime($miercolesCeniza));
        $semanaActual = $semana_actual - $primera_semana;
        if (date("w",strtotime($fecha_actual))=="0") {$semanaActual+=1;}
        echo $semanaActual."º semana de ";
    }
// Tiempo de Pascua - Semana Santa
//          - Primera luna llena de la primavera
elseif (date("Y/m/d",strtotime($fecha_actual))>=date("Y/m/d",strtotime($domingoRamos)) && date("Y/m/d",strtotime($fecha_actual)) <= date("Y/m/d",strtotime($domingoResurreccion))) 
    {
        $tiempo="pascua";
        $semanaActual=1;

    }
// Tiempo ordinario (resto del tiempo)
//          - Dividido en 2 partes:
//                  1. Desde el 9 de enero (fin de Navidad) hasta Miercoles de ceniza (principio de la cuaresma)
//                  2. Desde el fin de Pascua hasta Adviento
else
    {
        $tiempo="ordinario";
        $semanaActual=1;
    }

// Semana actual

                $lecturadiaria=evangeliodeldia($ciclo,$tiempo,$semanaActual,$diasemana);

                if(isset($lecturadiaria[0])){$evangelio=$lecturadiaria[0];}
                if(isset($lecturadiaria[1])){$capitulo=$lecturadiaria[1];}
                if(isset($lecturadiaria[2])){$desde=$lecturadiaria[2];}
                if(isset($lecturadiaria[3])){$hasta=$lecturadiaria[3];}
                $lectura=leerBibliaRetorno($evangelio,$capitulo,$desde,$hasta);
                echo ("<p class='parrafo'>".$lectura."</p>"); ?>
                </div>
            </div>
            <div class="row gx-4">
                <div class="col border border-success rounded m-2 p-2 text-center">
                    <?php echo boe ();    ?>
            </div>
            </div> <!-- container -->
 </div>
</div>
</div>
</div>

<?php//include 'footer.php';?>
