<?php
 
$carnet = $_GET['carnet']; /*Se consigue el carnet para poder mostar la imagen en la etiqueta img*/
$conexion = mysqli_connect("localhost","root","","academico");
/* En la siguiente codigo, se consula  en la base de datos para poder conseguir de la tabla, 
   el nombre del usuario que accedio, para posteriormente mostrar el nombre.*/
$sentencia="SELECT ci,nombreCompleto FROM identificador WHERE ci='$carnet'";
            $resultado=mysqli_query($conexion,$sentencia);
            $filas=mysqli_fetch_assoc($resultado);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
 	<link rel="stylesheet" href="css/estilo.css">  <!-- Se usa css para centrar la imagen-->
</head>
<body>   
    <?php  
     echo '<h1>BIENVENID@: '.$filas['nombreCompleto'].'</h1>'; /* Se muestra el nombre de acuerdo a la respuesta
                                                                de la base de datos*/
     echo '<img src="Imagen/'.$filas['ci'].'.jpg" height="300" width="300">'; /* Se muestra la imagen ubicada en 
                                                la carpeta imagen de acuerdo al ci*/
    ?>      <!-- En el siguiente codigo, se muestra el formulario en el cual se escogen los colores
                   para poder cambiar los colores de la pantalla-->
            <br>
            <div style="text-align: center" class="contenedor-inputs">           
            <form action="#" method="post" >
            <select name="Color" >
            <option >Colores</option>
            <option value="Red">Rojo</option>
            <option value="Yellow">Amarillo</option>
            <option value="Green">Verde</option>
            <option value="Blue">Azul</option>
            <option value="Orange">Naranja</option>
            <option value="#00aae4">Celeste</option>
            </select>
            <input type="submit" name="colores" value="AjustarColor" />
            </form>
        </div>
        <br>
        
        <br>
        <div style="text-align: center" class="contenedor-inputs">           
        <form name="cerrar" action='destruir_sesion.php'>
        <input type="submit" name="sesionDestroy" value="Cerrar sesion"/> <!--Direcciona a la pagina donde se                                                                             cierra la sesion-->
        </form>
        </div>
 </body>
</html>
<?php
    if( isset($_POST['colores'])){
        $valor = $_POST['Color'];  /* almacenando en "$valor", el color seleccionado en el formulario de colores*/
    }else{
        $valor = "white";   /* valor por defecto de la pagina*/
    }

    if(isset($body) && $body == true) /* Se comprueba si $body esta definida, pero eso no es cierto asi que se comprueba si $body es igual a true*/
    {
        echo '<body style="background-color:white">'; /*ajusta por true el color blanco*/
    } else {
        echo '<body style="background-color:'.$valor.'">';/*por else ajusta el color escogido en el formulario*/
    }
?>
