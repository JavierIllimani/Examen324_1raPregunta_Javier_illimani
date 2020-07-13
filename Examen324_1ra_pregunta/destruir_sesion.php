<?php
/* Se Destruye la sesion */
session_start();
session_destroy();
/* Se Redirige a index.html */
header('Location: index.html');
?>