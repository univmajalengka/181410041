<!DOCTYPE html PUBLIC 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
</head>
<link href="style.css" rel="stylesheet" type="text/css" />
<body>
<div id="wrapper">
<div id="header">selamat datang </div>
<div id="left"><br />
<br />
<div class="menu"></div>
</div>
<div id="content"><br />
	<table border="10">
		<tr>
			<th>id_barang</th>
			<th>nama</th>
			<th>id_kelas</th>
			<th>id_lok</th>
			<th>tgl_peng</th>
			<th>inven</th>
			<th>jumlah</th>
			<th>asal</th>
			<th>status</th>
		</tr>
	<?php 
	include "koneksi.php";
	$query_mysql = mysql_query("select * FROM tabel_barrang")or die(mysql_error());
	$nomor = 1;
	while ($data = mysql_fetch_array($query_mysql)){
		 ?>
		<tr>
			<td><?php  echo $nomor++; ?> </td>
			<td><?php echo $data['id_barang'];?></td>
			<td><?php echo $data['nama'];?></td>
			<td><?php echo $data['id_kelas'];?></td>
			<td><?php echo $data['id_lok'];?></td>
			<td><?php echo $data['tgl_peng'];?></td>
			<td><?php echo $data['inven'];?></td>
			<td><?php echo $data['jumlah'];?></td>
			<td><?php echo $data['asal'];?></td>
			<td><?php echo $data['status'];?></td>
			</td>


		</tr>
		<?php	} ?>
	</table>
</div>
<div id="right"></div>
<div id="clearer"></div>
<div id="footer"><center>
  <p>&copy; 2020|RAIMUSLIM<br />
  </p></center>
  </div>
</div>
</body>
</html>
