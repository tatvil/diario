<?php
function menus($menu)
{   ?>
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
    <?php   
            if ($menu=="diario") { ?><a class="nav-link active bg-success">Diario</a>  <?php }
            else { ?> <a class='nav-link text-success' href='../diario/'>Diario</a> <?php  }    ?>
        </li>
    <?php    if ($menu=="personas")
            { ?>    
                <li class="nav-item">
                    <a class="nav-link active bg-success" aria-current="page" href="../salud/personas.php">Personas</a>
            </li>
    <?php   }
        else
            {  ?>
            <li class="nav-item">
                    <a class="nav-link text-success" aria-current="page" href="../salud/personas.php">Personas</a>
            </li>
    <?php   }
    if ($menu=="salud")
        { ?>    
        <li class="nav-item">
            <a class="nav-link active bg-success" aria-current="page" href="../salud/">Salud</a>
    </li>
<?php   }
    else
        {  ?>
    <li class="nav-item">
            <a class="nav-link text-success" aria-current="page" href="../salud/">Salud</a>
    </li>
<?php   }   
if ($menu=="covid")
    { ?>    
    <li class="nav-item">
        <a class="nav-link active bg-success" aria-current="page" href="../covid/">COVID19</a>
    </li>
    <?php   }
else
    {  ?>
    <li class="nav-item">
        <a class="nav-link text-success" aria-current="page" href="../covid/">COVID19</a>
    </li>
    <?php   }

if ($menu=="recursos catolicos")
    { ?>    
    <li class="nav-item">
        <a class="nav-link active bg-success" aria-current="page" href="../recursos-catolicos/">Recursos Católicos</a>
    </li>
    <?php   }
else
    {  ?>
    <li class="nav-item">
        <a class="nav-link text-success" aria-current="page" href="../recursos-catolicos/">Recursos Católicos</a>
    </li>
<?php   }

echo "</ul>";
}
function crearMes ($mes,$ano)
{
     
     // Create array containing abbreviations of days of week.
     $daysOfWeek = array('L','M','X','J','V','S','D');

     // What is the first day of the month in question?
     $firstDayOfMonth = mktime(0,0,0,$mes,1,$ano);

     // How many days does this month contain?
     $numberDays = date('t',$firstDayOfMonth);

     // Retrieve some information about the first day of the
     // month in question.
     $dateComponents = getdate($firstDayOfMonth);

     // What is the name of the month in question?
     $nombreMes=array('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');

     // What is the index value (0-6) of the first day of the
     // month in question.
     $dayOfWeek = $dateComponents['wday'];

     $calendar = "<h3 class='header'>".$nombreMes[$mes-1]." ".$ano."</h3>";
     $calendar .= "<table style='margin: 0 auto;'>";
     $calendar .= "<tr>";
     foreach($daysOfWeek as $day) {
          $calendar .= "<th>$day</th>";
     } 
    $calendar .= "<tr>";

    $diaSemana=0; // Para meter espacion a principios de mes y salto de domingo a lunes en el momento oportuno
    for ($i = 1; $i < $dayOfWeek; $i++)
     {
          $calendar .= "<td></td>";
          $diaSemana ++;
     }


     for($i = 1; $i <= $numberDays; $i++)
          { 
          $diaSemana ++;
          if ($diaSemana % 7 == 1) {$calendar .=  "</tr><tr>";}
          if ($i==date("d")) // Marcamos la fecha de hoy en el calendario
               {
               $calendar .=  "<td class='border border-success rounded m-2 p-2 text-center'>".$i."</td>";
               }
          else
               {
               $calendar .=  "<td class='m-2 p-2 text-center'>".$i."</td>"; 
               }
          } 
     
      $calendar .= "</tr></table><br>";
      echo $calendar;
}

function leerBiblia ($libro, $capitulo, $inicio, $fin)
{
    require_once "config-recursos-catolicos.php";
    $sql = "SELECT libros_biblia.nombre AS libro, biblia.subindice AS subindice, biblia.nombre AS nombre FROM biblia JOIN libros_biblia ON libros_biblia.numero=biblia.libro_id WHERE libros_biblia.numero=".$libro." AND biblia.capitulo=".$capitulo." AND biblia.subindice>=".$inicio." AND biblia.subindice<=".$fin;

    if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
      {
        if(mysqli_num_rows($result) > 0)
           {
                ?><p style='font-size:1.2rem;';><?php
                while($row = mysqli_fetch_array($result))
                {
                        echo "<sup>".$row['subindice']."</sup>".$row['nombre']." ";
                }
                echo "</p>";
            // Free result set
            mysqli_free_result($result);
        }
    else{
            echo '<div class="alert alert-danger"><em>No records were found.</em></div>';
        }
    } else{
        echo "Oops! Something went wrong. Please try again later.";
    }
    cerrarDB();
}

function leerBibliaRetorno ($libro, $capitulo, $inicio, $fin)
{
    require_once "config-recursos-catolicos.php";
    $sql = "SELECT subindice, nombre FROM biblia WHERE libro_id=".$libro." AND capitulo=".$capitulo." AND subindice>=".$inicio." AND subindice<=".$fin;

    if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
      {
        if(mysqli_num_rows($result) > 0)
           {
               $cadena="";
                while($row = mysqli_fetch_array($result))
                {
                        $cadena.= "<sup>".$row['subindice']."</sup>".$row['nombre']." ";
 //                       $nombreLibro=$row['libro'];
                }
            $nombreLibro=librosBiblia($libro);
 //               $cadena.= "<div class='autor'>".$nombreLibro." ".$capitulo.".".$inicio."-".$fin."</div>";
            // Free result set
            mysqli_free_result($result);
        }
    else{
            $cadena= '<div class="alert alert-danger"><em>No records were found.</em></div>';
        }
    } else{
        $cadena="Oops! Something went wrong. Please try again later.";
    }
    return $cadena;
    cerrarDB();
}

function librosBiblia ($numero)
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT * FROM libros_biblia WHERE numero=$numero";
        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
            {
            if( mysqli_num_rows($result) > 0)
                {
                while($row = mysqli_fetch_array($result))
                    {
                        return $row['nombre'];
                    }
                
                // Free result set
            mysqli_free_result($result);
        }
    else{
            echo '<div class="alert alert-danger"><em>Evangelio no encontrado.</em></div>';
        }
    } else{
        echo "Oops! Something went wrong. Please try again later.";
    }
    cerrarDB();
    }

function numLibros ()
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT * FROM libros_biblia";
;
        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            return (mysqli_num_rows($result));
        } 
        else
        {
            echo "Oops! Something went wrong. Please try again later.";
        }
        cerrarDB();
    }

function evangeliodeldia ($ciclo,$tiempo,$numero,$diasemana)
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT libro,capitulo,desde,hasta FROM evangeliodeldia WHERE ciclo='$ciclo' AND tiempo='$tiempo' AND numero=".$numero." AND diasemana=".$diasemana;

        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                $cadena="";
                while($row = mysqli_fetch_array($result))
                    {
                        $evangelio=$row['libro'];
                        $capitulo=$row['capitulo'];
                        $desde=$row['desde'];
                        $hasta=$row['hasta'];
                    }
                return array($evangelio,$capitulo,$desde,$hasta);
                // Free result set
                mysqli_free_result($result);
                }
        }
        else
        {
            echo "Oops! Something went wrong. Please try again later.";
        }
        cerrarDB();
    }
function santodeldia ($dia,$mes)
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT nombre FROM festivos WHERE mes=".$mes." AND dia=".$dia;

        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                $cadena="";
                while($row = mysqli_fetch_array($result))
                    {
                        $cadena.=$row['nombre']."<br>";
                    }
                return $cadena;

                // Free result set
                mysqli_free_result($result);
                }
        }
        else
        {
            echo "Oops! Something went wrong. Please try again later.";
        }
        cerrarDB();
    }
function BuscarViernesSanto($anno)
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT mes,dia FROM semanasanta WHERE anno=".$anno;

        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                $cadena="";
                while($row = mysqli_fetch_array($result))
                    {
                        $viernesSanto=$anno."/".$row['mes']."/".$row['dia'];
                    }
                return date($viernesSanto);

                // Free result set
                mysqli_free_result($result);
                }
        }
        else
        {
            echo "Oops! Something went wrong. Please try again later.";
        }
        cerrarDB();
    }

function lecturadiaria ($anno,$mes,$dia)
    {
        require_once "config-recursos-catolicos.php";

        $sql = "SELECT libro,capitulo,desde,hasta FROM lecturadiaria WHERE anno=".$anno." AND mes=".$mes." AND dia=".$dia;

        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                $cadena="";
                while($row = mysqli_fetch_array($result))
                    {
                        $evangelio=$row['libro'];
                        $capitulo=$row['capitulo'];
                        $desde=$row['desde'];
                        $hasta=$row['hasta'];
                    }
                return array($evangelio,$capitulo,$desde,$hasta);
                // Free result set
                mysqli_free_result($result);
                }
               }
        
        cerrarDB();
    }

function cerrarDB ()
{
    // Close connection
    mysqli_close(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME));
}

function busquedaTermino ($termino)
    {
        require_once "config-recursos-catolicos.php";
        $sql = "SELECT * FROM biblia WHERE nombre LIKE '% ".$termino." %'";

        if($result = mysqli_query(mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                $cadena="";
                while($row = mysqli_fetch_array($result))
                    {
                        $cadena.=$row['nombre']."<br>";
                
                    }
                return $cadena;
                }
        } 
        else
        {
            echo "Oops! Something went wrong. Please try again later.";
        }
        
        cerrarDB();
    }
function insertarDatosTiempo ()
    {
        $archivo = file_get_contents('http://api.openweathermap.org/data/2.5/weather?q=Madrid,es&appid=69ef7f26726bba12b03c74b1e97b550f&mode=xml&units=metric');
        $xml = simplexml_load_string($archivo) or die('Error:no encuentramos el feed');
    //Datos de configuracion de la base de datos
        $servername  = 'localhost';         
        $username   = 'root';  
        $password   = '';         
        $dbname   = 'diario';  
   
  //Recogida de datos de la web
       $temperatura_min=$temperatura_max=$humedad=$viento=$viento_direccion=$nubes=$lluvia=0;
       $fecha=date("Y-m-d H:i");
       $ciudad=$xml->city['name'];
       $timezone=$xml->city->timezone;
       $salidasol=date("Y-m-d H:i",strtotime(($xml->city->sun['rise']))+$timezone);
       $puestasol=date("Y-m-d H:i",strtotime(($xml->city->sun['set']))+$timezone);
       if (isset ($xml->temperature['min'])) $temperatura_min=$xml->temperature['min'];
       if (isset ($xml->temperature['max'])) $temperatura_max=$xml->temperature['max'];
       if (isset ($xml->humidity['value'])) $humedad=$xml->humidity['value'];
       if (isset ($xml->wind->speed['value'])) $viento=$xml->wind->speed['value'];
       if (isset ($xml->wind->direction['value'])) $viento_direccion=$xml->wind->direction['value'];
       if (isset ($xml->wind->direction['code'])) $viento_direccion_nombre=$xml->wind->direction['code'];
       if (isset ($xml->clouds['value'])) $nubes=$xml->clouds['value'];
       if (isset ($xml->clouds['name'])) $nubes_nombre=$xml->clouds['name'];
       if (isset ($xml->precipitation['mode'])) $lluvia=$xml->precipitation['mode'];


// insertar datos recogidos en la base de datos //TABLA weather
   try {
       $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
       // set the PDO error mode to exception
       $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
       $sql = "INSERT INTO weather (fecha, ciudad, amanecer,anochecer,temp_min,temp_max,humedad,viento_velocidad,viento_direccion,nubes,lluvia) VALUES ('$fecha','$ciudad', '$salidasol', '$puestasol',$temperatura_min,$temperatura_max,$humedad,$viento,$viento_direccion,$nubes,'$lluvia')";
       // use exec() because no results are returned
       $conn->exec($sql);
//           echo "Nuevo registro añadido a la tabla weather"."<br>";
       } 
   catch(PDOException $e) 
       {
       echo $sql . "<br>" . $e->getMessage();
       }
   $conn = null;
    }

function insertarDatosCovid ($fecha,$cod_postal,$casos)
     {
    //Datos de configuracion de la base de datos
      $servername  = 'localhost';         
      $username   = 'root';  
      $password   = '';         
      $dbname   = 'diario';  
    

// insertar datos mandados en argumentos en la base de datos //TABLA covid
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO covid (fecha, cod_postal, casos) VALUES ('$fecha','$cod_postal', $casos)";
        // use exec() because no results are returned
        $conn->exec($sql);
//           echo "Nuevo dato covid añadido a la tabla"."<br>";
        } 
    catch(PDOException $e) 
        {
        echo $sql . "<br>" . $e->getMessage();
        }
    $conn = null;
      }

function elTiempo ($dia,$mes,$anno)
          {
               //Datos de configuracion de la base de datos
                $servername  = 'localhost';         
                $username   = 'root';  
                $password   = '';         
                $dbname   = 'diario';  

               $fechaIntro=$anno."-".$mes."-".$dia;
               $sql = "SELECT fecha, time(amanecer) AS amanecer, time(anochecer) AS anochecer, min(temp_min) AS temp_min, max(temp_max) AS temp_max, max(humedad) AS humedad, max(viento_velocidad) AS viento, sum(lluvia) AS lluvia
               FROM weather
                WHERE date(fecha)='$fechaIntro'";
                             
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           { 
                               echo "<tr><td><img src='img/sunrise.png' alt='Amanecer: ' style='width:40px;height:40px;'></td><td>".date("H:i",strtotime($row['amanecer']))." - ".date("H:i",strtotime($row['anochecer']))."</td></tr>";
                               echo "<tr><td><img src='img/termometro.png' alt='Amanecer: ' style='width:40px;height:40px;'></td><td>".$row['temp_min']."º/".$row['temp_max']."º</td></tr>";
                               echo "<tr><td><img src='img/humedad.png' alt='Humedad: ' style='width:40px;height:40px;'></td><td>".$row['humedad']."%</td></tr>";
                               echo "<tr><td><img src='img/viento.png' alt='Viento: ' style='width:40px;height:40px;'></td><td>".$row['viento']*3.6." km/h</td></tr>";
                               echo "<tr><td><img src='img/lluvia.png' alt='Lluvia: ' style='width:40px;height:40px;'></td><td>".$row['lluvia']."</td></tr>";
                           }
                       }
               } 
               else
               {
                   echo "Oops! Something went wrong. Please try again later.";
               }
               
               cerrarDB();  
          }
          
function rellenaPoblaciones ()
          {
               //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario'; 

            $cadena="";
            
            $sql = "SELECT cod_postal, nombre FROM pueblos GROUP BY nombre";
               
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           {
                               $cadena.="<option value='".$row['cod_postal']."'>".$row['nombre']."</option>";
                           }        
                       }
               } 

                return $cadena;              
               cerrarDB();  
          }

    function selectPersona ()
          {
               //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario'; 

            $cadena="";
            
            $sql = "SELECT id, nombre, apellido1, apellido2
                            FROM personas
                            ORDER BY apellido1, apellido2,nombre";
               
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           {
                               $cadena.="<option value='".$row['id']."'>".$row['nombre']." ".$row['apellido1']." ".$row['apellido2']."</option>";
                           }  
                       }
               } 
                return $cadena;              
               cerrarDB();  
          }
function selectDatosPersona ($id)
          {
               //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario'; 

            $cadena="";
            
            $sql = "SELECT tipodato, count(valor) AS valor FROM `vital` WHERE persona='".$id."' GROUP BY tipodato ORDER BY count(valor) DESC, tipodato";
              
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           {
                               $tipodatonum=$row['tipodato'];
                               $tipodatonombre=quetipodatoes($tipodatonum);
                               $cadena.="<option value='".$tipodatonum."'>".$tipodatonombre."</option>";
                           }  
                       }
               } 
                return $cadena;              
               cerrarDB();  
          }
    function quetipodatoes($tipodatonum)
    {
        //Datos de configuracion de la base de datos
        $servername  = 'localhost';         
        $username   = 'root';  
        $password   = '';         
        $dbname   = 'diario'; 

        $sql = "SELECT nombre FROM tipo_dato_vital WHERE id=$tipodatonum";
       
        if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
        {
            if( mysqli_num_rows($result) > 0)
                {
                 while($row = mysqli_fetch_array($result))
                    {
                        return $row['nombre'];
                    }  
                }
        } 
         return $cadena;              
        cerrarDB();  
   }

    function selectPersonaDatalist ()
          {
               //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario'; 

            $cadena="";
            
            $sql = "SELECT nombre, apellido1, apellido2
                            FROM personas";
               
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           {
                               $cadena.="<option value='".$row['nombre']." ".$row['apellido1']." ".$row['apellido2']."'>"."</option>";
                           }  
                       }
               } 
                return $cadena;              
               cerrarDB();  
          }

function selectDatoVital($persona,$tipodato)
        {
    //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario';  

            $cadena="";
echo $persona." ".$tipodato;
            $sql = "SELECT fecha, valor FROM vital WHERE persona='".$persona."' AND tipodato='".$tipodato."' ORDER BY fecha DESC;";
echo $sql;
           if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
           {
               if( mysqli_num_rows($result) > 0)
                   {
                   $cadena="";$valorOld=$valorMax=0; $valorMin=9999999999;
                   while($row = mysqli_fetch_array($result))
                       {   
                           if ($tipodato==9 && $row['valor']>=200)
                                {$cadena.="<tr><td>".$row['fecha']."</td><td style='color:red'>".$row['valor']."</td></tr>";}
                           elseif ($tipodato==7)
                                {
                                if ($row['valor']==0) {$cadena.="<tr><td>".$row['fecha']."</td><td>Negativo</td></tr>";}
                                else {$cadena.="<tr><td>".$row['fecha']."</td><td style='color:red'>Positivo</td></tr>";}
                                }
                            elseif ($tipodato==1)
                                {
                                $altura=ultimaAltura($persona);
                                $peso=$row['valor'];
                                $imc=calcularIMC ($peso,$altura);
                                $cadena.="<tr><td>".$row['fecha']."</td><td>".$row['valor']." (".$imc.")</td></tr>";
                                }
                            elseif ($tipodato==8) // altura
                                {
                                $cadena.="<tr><td>".$row['fecha']."</td><td>".number_format($row['valor'],0)." ^</td></tr>";
                                }
                            elseif ($tipodato==2) //temperatura
                                {
                                    echo $row['valor']; 
                                    if ($row['valor']<37.0) {$cadena.="<tr><td>".$row['fecha']."</td><td style='color:green'>".number_format($row['valor'])."</td></tr>";}
                                    else {$cadena.="<tr><td>".$row['fecha']."</td><td style='color:red'>".number_format($row['valor'])."</td></tr>";}
                                }
                            else
                                {$cadena.="<tr><td>".$row['fecha']."</td><td>".$row['valor']."</td></tr>";}
                       }
                       
                   }
           } 
            return $cadena;              
           cerrarDB();  
      }

    function ultimaAltura($persona)
        {
    //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario';  

            $altura=0;

        $sql = "SELECT fecha, valor FROM vital WHERE persona='".$persona."' AND tipodato=8 ORDER BY fecha DESC;";
           if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
           {
               if( mysqli_num_rows($result) > 0)
                   {
                   while($row = mysqli_fetch_array($result))
                       { 
                           $altura=$row['valor'];  
                       }
                       
                   }
           } 
            return $altura;              
           cerrarDB();  
      }

function ultimoPeso($telefono)
      {
  //Datos de configuracion de la base de datos
          $servername  = 'localhost';         
          $username   = 'root';  
          $password   = '';         
          $dbname   = 'diario';  

          $peso=0;

      $sql = "SELECT fecha, valor FROM vital WHERE persona='".$telefono."' AND tipodato='peso' ORDER BY fecha DESC;";
         if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
         {
             if( mysqli_num_rows($result) > 0)
                 {
                 while($row = mysqli_fetch_array($result))
                     { 
                         $peso=$row['valor'];  
                     }
                     
                 }
         } 
          return $peso;              
         cerrarDB();  
    }

function calcularIMC($peso,$altura)
    {
        if ($peso>0 && $altura >0) $imc=number_format($peso/(($altura/100)*($altura/100)),2);
        else $imc=0;

        return $imc;
    }

function buscarCumple()
          {
            $mes=date("m");
            $dia=date("d");

        //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario';  

            $cadena="";
            $fechaCumple="%".$mes."-".$dia;
            $sql = "SELECT nombre, apellido1, apellido2, nacimiento
                        FROM personas
                        WHERE nacimiento LIKE '".$fechaCumple."'";
               if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
               {
                   if( mysqli_num_rows($result) > 0)
                       {
                       $cadena="";
                       while($row = mysqli_fetch_array($result))
                           {
                                $nacimiento=$row['nacimiento'];
                                $anno_nac = date("Y",strtotime($nacimiento));
                                $mes_nac = date("n",strtotime($nacimiento));
                                $dia_nac = date("j",strtotime($nacimiento));
                                $anno=date("Y");
                                $mes=date("n");
                                $dia=date("j");
                                if ($anno_nac>=1000)
                                {
                                    $annos_persona=$anno-$anno_nac;
                                    if ($mes_nac>$mes) $annos_persona-=1;
                                    elseif ($mes_nac==$mes && $dia_nac>$dia) $annos_persona-=1;
                                }
                                $cadena.=$row['nombre']." ".$row['apellido1']." ".$row['apellido2']." (".$annos_persona." años)<br>";
                            }
                        }
               } 
                return $cadena;              
               cerrarDB();  
          }

function insertarDatoVital($persona,$tipoDato,$valor,$fecha)
    {
    //Datos de configuracion de la base de datos
      $servername  = 'localhost';         
      $username   = 'root';  
      $password   = '';         
      $dbname   = 'diario';  
    

// insertar datos mandados en argumentos en la base de datos //TABLA vital
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO vital (fecha, persona, tipoDato, valor) VALUES ('$fecha','$persona', '$tipoDato' , $valor)";
        // use exec() because no results are returned
        $conn->exec($sql);
//           echo "Nuevo dato covid añadido a la tabla"."<br>";
        } 
    catch(PDOException $e) 
        {
        echo $sql . "<br>" . $e->getMessage();
        }
    $conn = null;
        
          }
    
function pueblo($cod_postal)
          {
             //Datos de configuracion de la base de datos
             $servername  = 'localhost';         
             $username   = 'root';  
             $password   = '';         
             $dbname   = 'diario';  
 
             $cadena="";
             $sql = "SELECT nombre
                         FROM pueblos
                         WHERE cod_postal=".$cod_postal;
                if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
                {
                    if( mysqli_num_rows($result) > 0)
                        {
                        $cadena="";
                        while($row = mysqli_fetch_array($result))
                            {
                                $cadena.=$row['nombre'];
                            }         
                        }
                } 
                 return $cadena;              
                cerrarDB();    
          }

function selectTabla ($tabla)
    {
//Datos de configuracion de la base de datos
    $servername  = 'localhost';         
    $username   = 'root';  
    $password   = '';         
    $dbname   = 'diario'; 

    $cadena="";
            
    $sql = "SELECT id, nombre FROM ".$tabla." ORDER BY nombre";
      
    if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
        {
        if( mysqli_num_rows($result) > 0)
            {
            $cadena="<option value=''>Escoger opcion ...</option>";
            while($row = mysqli_fetch_array($result))
                {
                $cadena.="<option value='".$row['id']."'>".$row['nombre']."</option>";
                }  
            }
        } 
        return $cadena;              
        cerrarDB();  
}

function nombrePersona ($id)
{
    //Datos de configuracion de la base de datos
        $servername  = 'localhost';         
        $username   = 'root';  
        $password   = '';         
        $dbname   = 'diario'; 
    
        $cadena="";
                
        $sql = "SELECT nombre, apellido1, apellido2 FROM personas WHERE id=".$id;
          
        if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
            {
            if( mysqli_num_rows($result) > 0)
                {
                while($row = mysqli_fetch_array($result))
                    {
                    $cadena.=$row['nombre']." ".$row['apellido1']." ".$row['apellido2'];
                    }  
                }
            } 
            return $cadena;              
            cerrarDB();  
    }
    function buscarPadres ($id,$quien)
    {
        //Datos de configuracion de la base de datos
            $servername  = 'localhost';         
            $username   = 'root';  
            $password   = '';         
            $dbname   = 'diario'; 
        
            $cadena="";
                    
            $sql = "SELECT ".$quien." AS progenitor FROM relaciones_familiares WHERE id=".$id;
            
            if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
                {
                if( mysqli_num_rows($result) > 0)
                    {
                    while($row = mysqli_fetch_array($result))
                        {
                        $cadena.=$row['progenitor'];
                        }  
                    }
                } 
                return $cadena;              
                cerrarDB();  
        }
    function buscarHijos ($id)
        {
            //Datos de configuracion de la base de datos
                $servername  = 'localhost';         
                $username   = 'root';  
                $password   = '';         
                $dbname   = 'diario'; 
            
                $cadena="array(";
                        
                $sql = "SELECT id FROM relaciones_familiares WHERE padre=".$id." OR madre=".$id;
                
                if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
                    {
                    if( mysqli_num_rows($result) > 0)
                        {
                            return mysqli_fetch_array($result);
             //           while($row = mysqli_fetch_array($result))
             //               {
             //               $cadena.=$row['id'].",";
             //               }  
                        }
                    } 
        //            $cadena.="0)";
        //            return $cadena;              
                    cerrarDB();  
            }
function buscarEnfermedades ($id)
        {
            //Datos de configuracion de la base de datos
                $servername  = 'localhost';         
                $username   = 'root';  
                $password   = '';         
                $dbname   = 'diario'; 
            
                $cadena="";
                        
                $sql = "SELECT fecha_inicio, fecha_fin, enfermedades.nombre AS enfermedad FROM enfermedades_personas AS ep JOIN enfermedades ON ep.enfermedad = enfermedades.id WHERE persona=".$id." ORDER BY fecha_inicio DESC";
              
                if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
                    {
                    if( mysqli_num_rows($result) > 0)
                        {
                        while($row = mysqli_fetch_array($result))
                            {
                            $cadena.="<tr><td>".date ("d-m-Y",strtotime($row['fecha_inicio']))." - ".date ("d-m-Y",strtotime($row['fecha_fin']))."</td><td>".$row['enfermedad']."</td></tr>";
                            }  
                        }
                    } 
                    return $cadena;              
                    cerrarDB();  
            }
            
function insertarAlimento ($nombre,$calorias,$proteinas,$hidratos,$grasas,$fibra)
        {
            
        //Datos de configuracion de la base de datos
        $servername  = 'localhost';         
        $username   = 'root';  
        $password   = '';         
        $dbname   = 'diario';  

        // insertar datos mandados en argumentos en la base de datos //TABLA vital
        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "INSERT INTO alimentos (nombre,calorias,proteinas,hidratos,grasas,fibra) VALUES ('$nombre',$calorias,$proteinas,$hidratos,$grasas,$fibra)";
echo $sql;
            // use exec() because no results are returned
            $conn->exec($sql);
             } 
        catch(PDOException $e) 
            {
            echo $sql . "<br>" . $e->getMessage();
            }
        $conn = null;
            }

function buscarIntervenciones ($id)
            {
                //Datos de configuracion de la base de datos
                    $servername  = 'localhost';         
                    $username   = 'root';  
                    $password   = '';         
                    $dbname   = 'diario'; 
                
                    $cadena="";
                            
                    $sql = "SELECT fecha, intervenciones.nombre AS intervencion, organos.nombre AS organo FROM intervenciones_persona AS ip JOIN intervenciones ON ip.intervencion = intervenciones.id JOIN organos ON ip.organo = organos.id WHERE persona=".$id." ORDER BY fecha DESC";
       
                    if($result = mysqli_query(mysqli_connect('localhost', 'root', '', 'diario'), $sql))
                        {
                        if( mysqli_num_rows($result) > 0)
                            {
                            while($row = mysqli_fetch_array($result))
                                {
                                $cadena.="<tr><td>".date ("d-m-Y",strtotime($row['fecha']))."</td><td>".$row['intervencion']."</td><td>".$row['organo']."</td></tr>";
                                }  
                            }
                        } 
                        return $cadena;              
                        cerrarDB();  
                }
function boe ()
                {
                    $fecha=date("Ymd");

                    $web='https://www.boe.es/diario_boe/xml.php?id=BOE-S-'.$fecha;
                    if (!empty($web))
                    {
                    $cadena='';
                    $archivo = file_get_contents($web);
                    $xml = simplexml_load_string($archivo) or die('No encuentro el BOE'.$web);
                    
                         foreach ($xml->diario as $diario)
                         {
                            foreach ($diario->seccion as $seccion)
                                {
                                if ($seccion['num']=="2B")
                                    {
                                    $cadena.="<h3> BOE nº ".$xml->diario['nbo']." del día ".$xml->meta->fecha."</h2><p>".$web."</p>".PHP_EOL;
                                    foreach ($seccion->departamento as $departamento)
                                        {
                                        foreach ($departamento->epigrafe as $epigrafe)
                                                {
                                                    $cadena.="<h4>".$epigrafe['nombre']."</h3>".PHP_EOL;
                    
                                                    foreach ($epigrafe->item->titulo as $titulo)
                                                        {
                                                        $url='https://www.boe.es'.$epigrafe->item->urlHtm;
                                                        $cadena.="<p>".$titulo." <a href='".$url."'>".$url."</a></p>".PHP_EOL;
                                                        }
                                        }
                                    }
                                }      
                            }
                        }
                    return $cadena;
                }
            }
    
?> 