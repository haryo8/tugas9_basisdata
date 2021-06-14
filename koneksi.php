<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "haryo9_311910572";
$conn = mysqli_connect($host, $user, $pass, $db);
if ($conn == false)
{
echo "Koneksi ke server gagal.";
die();
} #else echo "Koneksi berhasil";
?>