<?php
ob_start();
session_start();
$nama_siswa = $_SESSION['nama_siswa'];
$tingkat_kelas = $_SESSION['tingkat_kelas'];
$isLoggedIn = $_SESSION['isLoggedIn'];
if($isLoggedIn != '4'){
    session_destroy();
    header('Location: login.php');
}
ob_flush(); ?>