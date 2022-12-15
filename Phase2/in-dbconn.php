<?php

# These setting are stored in the .htaccess file

$servername = $_SERVER['SAMPLE_SERVER'];
$username = $_SERVER['SAMPLE_USER'];
$password = $_SERVER['SAMPLE_PASS'];
$dbname = $_SERVER['SAMPLE_DB'];

/* echo "<br/>Database name: $dbname <br/>Username: $username<br/>"; */

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  // echo "<p/>Connection successful.";
} catch(PDOException $e) {
  echo "<p/>Connection failed: " . $e->getMessage();
}
?>
