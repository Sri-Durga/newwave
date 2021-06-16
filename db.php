<?php
$servername = "localhost:3307";
$username = "root";
$password = "sri19189";
$db = "newwave";
$con = mysqli_connect($servername, $username, $password,$db);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
