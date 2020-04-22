<?php 
$koneksi = mysql_connect("localhost","root","si_manajemen");
if (mysql_connect_error()){
echo"koneksi database gagal:". mysql_connect_error();
}
 ?>