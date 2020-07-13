<?php

$user="root";
$password=";
try{
    $connection=new PDO('mysql:host=localhost;dbname=academico',$user,$password);
    $connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    
}catch(PDOException $e){
    
}
?>