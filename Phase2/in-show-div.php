<?php include 'in-dbconn.php' ?>
<table>
<?php
$dbs = $conn->query( $query );

$group = "";
while( $row = $dbs->fetch(PDO::FETCH_BOTH) )
{
  if($group!=$row[0]){
    if($group!="") echo "</div>";
    echo "<h3>".$row[0]."</h3>";
    $group = $row[0];
    echo "<div>";
  }
  echo "<span>";
  $cnt = count($row) / 2; // PDO::FETCH_BOTH returns twice the columns
  for ($i=1; $i<$cnt; $i++){
    echo "" . $row[$i] ."&nbsp;";
  }
  echo "</span>";
}
?>
</table>
