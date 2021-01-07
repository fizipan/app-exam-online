<?php
session_start();
session_destroy();
header('Location: ../guru/login.php');
?>