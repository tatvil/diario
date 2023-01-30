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
echo "<h1 class='titulo'>".$meses[$diasemana]." ".$dia." de ".$mesesanno[$messincero-1]." de ".$anno_actual."</h1>";
?>
<div class="grid-container">
    <div class="item1">
        <?php crearMes ($mes,$anno);  # Generacion del calendario del mes actual ?>
    </div>
    <div class="item2">
        <p class='header'>El tiempo en Madrid</p>
            <?php
                insertarDatosTiempo(); # Datos del tiempo ?>
                <table style='width: 100%;'>  
                    <?php elTiempo($dia,$mes,$anno); # Visualizamos datos del tiempo ?>
                </table>
        <br><a href="../weather/">Histórico del tiempo</a>
    </div>
    <div class='item3'><?php
        $cumples=BuscarCumple();
        if (isset($cumples)){echo "<p><strong>CUMPLEAÑOS</strong><br>".$cumples."</p><br>";}
        $santodeldia=santodeldia($diasincero,$messincero);
        if (isset($santodeldia)){echo "<p><strong>SANTORAL</strong><br>".$santodeldia."</p><br>";}

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
        if(isset($_POST['fecha']))          {$fecha = $_POST['fecha'];}
        if(isset($_POST['oxigeno']))      {$oxigeno = $_POST['oxigeno'];}
        
        echo "<p>Datos: ".$fecha." ".$temperatura." ". $oxigeno."</p>";
        insertarDatoVital('639145826','temperatura',$temperatura,$fecha);
        insertarDatoVital('639145826','oxigeno',$oxigeno,$fecha);
    ?>

    <?php   
            }     // Si es lunes     
    
        if ($diasemana==3) // Si es miercoles recoger datos covid
            { ?>
        <h4>DATOS COVID</h4><br>
        <form action="" method="POST">
            <label for="fecha">Fecha:</label>
            <input type='date' name="fecha" id="fecha"><br>
            <label for="poblacion">Poblacion:</label>
            <select class="dropdown" name="poblacion" id="poblacion">
                <?php echo rellenaPoblaciones();?>
            </select><br>
            <label for="covid">Datos COVID:</label>
            <input type='number' name="covid" id="covid"><br>

            <br><input type="submit" class="boton" value="Insertar">
        </form> 

    <?php
        $poblacion=$fecha=$covid="";
        if(isset($_POST['poblacion']))  {$poblacion = $_POST['poblacion'];}
        if(isset($_POST['fecha']))      {$fecha = $_POST['fecha'];}
        if(isset($_POST['covid']))      {$covid = $_POST['covid'];}
        
        echo "<p>Datos: ".$fecha." ".$poblacion." ". $covid."</p>";
        insertarDatosCovid ($fecha,$poblacion,$covid);
    ?>

    <?php   
            }     // Si es miercoles     
    if ($diasemana==4) // Si es jueves recoger datos peso
            { ?>
        <h4>PESO</h4><br>
        <form action="" method="POST">
            <label for="peso">PESO:</label>
            <input type="number" class="dato" id="peso" name="peso"><br>
            
            <br><input type="submit" class="boton" value="Insertar">
        </form> 

    <?php    
        if(isset($_POST['peso'])) {$peso = $_POST['peso'];}
        if ($peso!=0)
                {
                $fecha=(date("Y-m-d"));
//                echo ('639145826 peso'.$peso." ".$fecha);
                insertarDatoVital('639145826','peso',$peso,$fecha);
                }       
    }     // Si es jueves     
        if ($diasemana==5) // Si es viernes hacerse un test de antigenos
            { 
                ?>
        <h4>Test de antigenos</h4><br>
        <form action="" method="POST">
            <label for="antigenos">Test de antigenos:</label>
            <select class="dropdown" name="antigenos" id="antigenos">
                <option value=0>Negativo</option>
                <option value=1>Positivo</option>
            </select><br>
            <br><input type="submit" class="boton" value="Insertar">
        </form> 
        <?php
        if(isset($_POST['antigenos'])) 
            {
            $antigenos = $_POST['antigenos'];
            $fecha=(date("Y-m-d"));
            echo ('639145826,antigenos,'.$antigenos.",".$fecha);
            insertarDatoVital('639145826','antigenos',$antigenos,$fecha);
            }
    }     // Si es viernes   ?>  
    </div>
</div>
</div>
</div>

<?php
    if ($diasemana==0) // Si es domingo lectura del dia
            { ?>
                <h4 class="header">LECTURA DEL DIA</h4><br>
<?php           $evangelio=$capitulo=$desde=$hasta=1;
                $lecturadiaria=lecturadiaria ($anno,$mes,$dia);
                
                if(isset($lecturadiaria[0])){$evangelio=$lecturadiaria[0];}
                if(isset($lecturadiaria[1])){$capitulo=$lecturadiaria[1];}
                if(isset($lecturadiaria[2])){$desde=$lecturadiaria[2];}
                if(isset($lecturadiaria[3])){$hasta=$lecturadiaria[3];}
                
                $lectura=leerBibliaRetorno($evangelio,$capitulo,$desde,$hasta);
                echo ("<p class='parrafo'>".$lectura."</p>");
                
            }     // Si es domingo     ?>
 

<?php//include 'footer.php';?>
