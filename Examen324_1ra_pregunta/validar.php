<?php
/*
Licenciado, segui textualmente lo que pidio, en la descripcion  del examen en la pagina mil aulas el cual
es lo siguiente:

"1.    Usted ha definido una tabla IDENTIFICADOR en la base de datos ACADEMICO, la cual contiene información de CI, Nombre completo, 
fecha de nacimiento, lugar de residencia (codigo) (El dato suyo es inicial, aunque el numero de carnet de sus amigos sean menores); 
otra tabla denominada USUARIO con los datos de CI y clave; realice lo siguiente: Genere un login por cada CI, 
ingresando a una pantalla de bienvenida (cuya cabecera indicara el nombre de su pagina, con una foto de usted con CSS) y un color por defecto (PHP), 
incluya select que tenga al menos tres colores.


Entonces en el codigo que sigue, se realiza la conexion con la base de datos, "academico", ademas verifica si el usuario que en este
caso sera el ci, y la contraseña son validos y se encuentran en la tabla usuario.
Si el usuario se encuentra en la base de datos, se dirige al usuario a la pagina "bienvenido.php",
si la contraseña esta mal o el usuario no se encuentra se ejecuta un pequeño codigo en javascript, 
el cual muestra un mensaje "Error en usuario o carnet".



*/
$usuario=$_POST["usuario"];
$clave=$_POST['clave'];
 
$conexion=mysqli_connect("localhost","root","","academico");
$consulta="select * from usuario where ci='$usuario' and clave='$clave'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);
if($filas>0){
    header('location: bienvenido.php?carnet=' . $usuario);   
   /* Con header se direcciona al usuario a bienvenido.php, ademas se pasa el valor de carnet ,
    el cual en bienvenido.php se usara para para realizar una consulta a la base de datos
    para poder mostrar el nombre del usuario que ingrese.*/
                                                
}else{
?>   
    <script type="text/javascript">
    alert ("Error en usuario o carnet");    /*muestra mensaje de alerta*/
    window.location.href='index.html';      /*indica la ubicacion actual de la url del navegador*/

    </script>
<?php 
}


?>

 
