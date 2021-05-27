<html>
   <head>
      <title>Menampilkan Data Tabel MySQL</title>
      <style>
         body {font-family:tahoma, arial}
         table {border-collapse: collapse}
         th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
         th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
      </style>
      
   </head>
   <body>
      <center><h1>hotel</h1></center>
      <h3>Tabel kamar </h3>
      <table>
         <thead> 
            <tr>
               <th>kode_kamar</th>
               <th>jenis_kamar</th>
               <th>tarif</th>
            </tr>
         </thead>
         <?php
            include 'koneksi.php';	

            $no =1;
            $query = mysqli_query($koneksi,"SELECT  * FROM kamar");		
            while ($row = mysqli_fetch_array($query)){
            	?>

         <tbody>
            <tr>
            	<td><?php echo $no++; ?></td>

               <td><?php echo $row['kode_kamar'] ?></td>
               <td><?php echo $row['jenis_kamar'] ?></td>
               <td><?php echo $row['tarif'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
     
   </body>
</html>