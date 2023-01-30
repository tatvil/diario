<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Datos Salud</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
</head>
<body>
<?php
include "funciones.php";

#Declaracion de variables

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

#Menus
?>
<ul class="nav nav-pills nav-fill">
  <li class="nav-item">
    <a class="nav-link" href="../diario/">Diario</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Insertar datos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="../covid/">Visualizar datos COVID</a>
  </li>
</ul>

<h1 class='titulo'>Insertar datos Vitales</h1>

<div class="grid-container">
    <div class="item1">
<?php    // Datos vitales de salud (temp,SO2)
         $oxigeno=$temperatura=0;$fecha=$telefono=""; ?>
        <h4>DATOS VITALES DE SALUD</h4><br>

        <form action="" method="POST">
            <label for="persona">Persona:</label>
            <select class="dropdown" name="persona" id="persona">
                <?php echo selectPersona();?>
            </select><br>
            <label for="fecha">Fecha:</label>
            <input type='date' name="fecha" id="fecha"><br>
            <label for="temperatura">Temperatura:</label>
            <input type='number' name="temperatura" id="temperatura" step="0.1" value=36 min=30 max=50><br>
            <label for="oxigeno">SO<sub>2</sub>:</label>
            <input type='number' name="oxigeno" id="oxigeno" value=100 min=70 max=100><br>
            <br><input type="submit" class="boton" value="Insertar">
        </form> 

    <?php
        if(isset($_POST['persona']))     {$persona = $_POST['persona'];}
        if(isset($_POST['temperatura']))  {$temperatura = $_POST['temperatura'];}
        if(isset($_POST['fecha']))        {$fecha = $_POST['fecha'];}
        if(isset($_POST['oxigeno']))      {$oxigeno = $_POST['oxigeno'];}
        
        echo "<p>Datos: ".$persona." ".$fecha." ".$temperatura." ". $oxigeno."</p>";
  //      insertarDatoVital($telefono,'temperatura',$temperatura,$fecha);
  //      insertarDatoVital($telefono,'oxigeno',$oxigeno,$fecha);
    ?>     
    </div>
    <div class="item2">
    <?php   
         $glucosa=$bilirrubina=$cetonas=$densidad=$sangre=$ph=$proteinas=$urobilinogeno=$nitritos=$leucocitos=0;$fecha=""; ?>
        <h4>DATOS VITALES DE SALUD</h4>
        <h5>Tira de orina</h5><br>
        <form action="" method="POST">
            <label for="fecha">Fecha:</label>
            <input type='date' name="fecha" id="fecha"><br>
            <label for="glucosa">Glucosa:</label>
            <select class="dropdown" name="glucosa" id="glucosa">
                <option value=0>Negativo</option>
                <option value=5.5>+-100(5.5)</option>
                <option value=14>+250(14)</option>
                <option value=28>++500(28)</option>
                <option value=56>+++1000(56)</option>
                <option value=111>++++2000(111)</option>
            </select><br>
            <label for="bilirrubina">Bilirrubina:</label>
            <select class="dropdown" name="bilirrubina" id="bilirrubina">
                <option value=0>Negativo</option>
                <option value=1>+</option>
                <option value=2>++</option>
                <option value=3>+++</option>
            </select><br>           
            <label for="cetonas">Cetonas:</label>
            <select class="dropdown" name="cetonas" id="cetonas">
                <option value=0>Negativo</option>
                <option value=0.5>+-5(0.5)</option>
                <option value=1.5>+15(1.5)</option>
                <option value=3.9>++40(3.9)</option>
                <option value=8>+++80(8)</option>
                <option value=3.9>++++160(16)</option>
            </select><br>    
            <label for="densidad">Densidad:</label>
            <select class="dropdown" name="densidad" id="densidad">
                <option value=1000>1000</option>
                <option value=1005>1005</option>
                <option value=1010>1010</option>
                <option value=1015>1015</option>
                <option value=1020>1020</option>
                <option value=1025>1025</option>
                <option value=1030>1030</option>
            </select><br>
            <label for="sangre">Sangre:</label>
            <select class="dropdown" name="sangre" id="sangre">
                <option value=0>Negativo</option>
                <option value=1>Hemolysis Trace</option>
                <option value=25>+25</option>
                <option value=80>++80</option>
                <option value=200>+++200</option>
                <option value=10>Non Hemolysis +10</option>
                <option value=80.2>Non Hemolysis ++80</option>
            </select><br>
            <label for="ph">PH:</label>
            <select class="dropdown" name="ph" id="ph">
                <option value=5>5</option>
                <option value=6>6</option>
                <option value=6.5>6.5</option>
                <option value=7>7</option>
                <option value=7.5>7.5</option>
                <option value=8>8</option>
                <option value=8.5>8.5</option>
            </select><br>
            <label for="proteinas">Proteinas:</label>
            <select class="dropdown" name="proteinas" id="proteinas">
                <option value=0>Negativo</option>
                <option value=1>trace</option>
                <option value=30>+30(0.3)</option>
                <option value=100>++100(1.0)</option>
                <option value=300>++300(3.0)</option>
                <option value=3.9>++++1000(10)</option>
            </select><br>    
            <label for="urobilinogeno">Urobilinogeno:</label>
            <select class="dropdown" name="urobilinogeno" id="urobilinogeno">
                <option value=0.1>0.1 - Normal</option>
                <option value=1>1(16) - Normal</option>
                <option value=2>2(33)</option>
                <option value=4>4(66)</option>
                <option value=8>8(131)</option>
            </select><br>    
            <label for="nitritos">Nitritos:</label>
            <select class="dropdown" name="nitritos" id="nitritos">
                <option value=0>Negativo</option>
                <option value=1>Trace</option>
                <option value=2>Positivo</option>
            </select><br>  
            <label for="leucocitos">Leucocitos:</label>
            <select class="dropdown" name="leucocitos" id="leucocitos">
                <option value=0>Negativo</option>
                <option value=1>Trace</option>
                <option value=70>+70</option>
                <option value=125>125</option>
                <option value=500>500</option>
            </select><br>  

            <br><input type="submit" class="boton" value="Insertar">
        </form> 

    <?php
        if(isset($_POST['fecha']))          {$fecha = $_POST['fecha'];}
        if(isset($_POST['glucosa']))        {$glucosa = $_POST['glucosa'];}
        if(isset($_POST['bilirrubina']))    {$bilirrubina = $_POST['bilirrubina'];}
        if(isset($_POST['cetonas']))        {$cetonas = $_POST['cetonas'];}
        if(isset($_POST['densidad']))       {$densidad = $_POST['densidad'];}
        if(isset($_POST['sangre']))         {$sangre = $_POST['sangre'];}
        if(isset($_POST['ph']))             {$ph = $_POST['ph'];}
        if(isset($_POST['proteinas']))      {$proteinas = $_POST['proteinas'];}
        if(isset($_POST['urobilinogeno']))  {$urobilinogeno = $_POST['urobilinogeno'];}
        if(isset($_POST['nitritos']))       {$nitritos = $_POST['nitritos'];}
        if(isset($_POST['leucocitos']))     {$leucocitos = $_POST['leucocitos'];}
        
        echo "<p>Datos: ".$fecha." ".$glucosa." ". $bilirrubina." ".$cetonas." ".$densidad." ".$sangre." ".$ph." ".$proteinas." ".$urobilinogeno." ".$nitritos." ".$leucocitos."</p>";
//        insertarDatoVital('639145826','orina - glucosa',$glucosa,$fecha);
//        insertarDatoVital('639145826','orina - bilirrubina',$bilirrubina,$fecha);
//        insertarDatoVital('639145826','orina - cetonas',$cetonas,$fecha);
//        insertarDatoVital('639145826','orina - densidad',$densidad,$fecha);
//        insertarDatoVital('639145826','orina - sangre',$sangre,$fecha);
//        insertarDatoVital('639145826','orina - ph',$ph,$fecha);
//        insertarDatoVital('639145826','orina - proteinas',$proteinas,$fecha);
//        insertarDatoVital('639145826','orina - urobilinogeno',$urobilinogeno,$fecha);
//        insertarDatoVital('639145826','orina - nitritos',$nitritos,$fecha);
//        insertarDatoVital('639145826','orina - leucocitos',$leucocitos,$fecha);
    ?>

    </div>
    <div class='item3'>
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

 // Recoger datos peso -- Variante hacerlo por persona ?>
        <h4>PESO</h4><br>
        <form action="" method="POST">
        <label for="persona">Persona:</label>
            <select class="dropdown" name="persona" id="persona">
                <?php echo selectPersona();?>
            </select><br>
            <label for="fecha">Fecha:</label>
            <input type='date' name="fecha" id="fecha"><br>
            <label for="peso">PESO:</label>
            <input type='number' name="peso" id="peso" step="0.1" value=60 min=30 max=150><br>
            
            <br><input type="submit" class="boton" value="Insertar">
        </form> 

    <?php  
        $persona=$fecha="";$peso=0;  
        if(isset($_POST['persona'])) {$persona = $_POST['persona'];}
        if(isset($_POST['fecha'])) {$fecha = $_POST['fecha'];}
        if(isset($_POST['peso'])) {$peso = $_POST['peso'];}
        if ($peso!=0)
                {
                echo ($persona.' peso '.$peso." ".$fecha);
                insertarDatoVital($persona,'peso',$peso,$fecha);
                }           
 //  Test de antigenos -- Variante hacerlo por personas?>
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
  ?>  
    </div>

</div>
</div>
</div>

 

</body>
</html>