<?php
ob_start();
session_start();
$nama_guru = $_SESSION['nama_guru'];
$isLoggedIn = $_SESSION['isLoggedIn'];
if($isLoggedIn != '3'){
    session_destroy();
    header('Location: login.php');
}
ob_flush(); ?>