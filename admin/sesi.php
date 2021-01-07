<?php
ob_start();
session_start();
$nama_admin = $_SESSION['nama_admin'];
$isLoggedIn = $_SESSION['isLoggedIn'];
if($isLoggedIn != '1'){
    session_destroy();
    header('Location: login.php');
}
ob_flush(); ?>