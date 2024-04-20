<?php

$hostname = "localhost";
$username = "root";
$password = "";
$database_name = "cuyresto";

$db = mysqli_connect($hostname, $username, $password, $database_name);

if ($db->connect_error) {
    echo "koneksi database error";
    die("koneksi database error");
}


