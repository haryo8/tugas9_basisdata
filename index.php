<?php
include("koneksi.php");
// query untuk menampilkan data
$sql = 'SELECT * FROM tamu_hotel';
$result = mysqli_query($conn, $sql);?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <link rel="stylesheet"  href="style.css">

<title>nama mahasiswa </title>
</head>
<body>
      
<div class="container">
   
   
<h1> tamu hotel </h1>
<div class="main">
<table border="solid">
      <tr>
         <th>id</th>
         <th>nama </th>
         <th>aksi</th>
      
      </tr>
      <?php if($result): ?>
      <?php while($row = mysqli_fetch_array($result)): ?>
      <tr>
         
         <td><?= $row['id_penghuni'];?></td>
         <td><?= $row['nama_penghuni'];?></td>
               
         <td> <a href="hapus"> ubah hapus </a> </td>
      </tr>
      <?php endwhile; else: ?>
      <tr>
      <td colspan="7">Belum ada data</td>
      </tr>
      <?php endif; ?>
</table>
</div>
<footer>
         <p> &copy; 2021,informatika,universitas pelita bangsa</p>
      </footer>
</div>
</body>
</html>