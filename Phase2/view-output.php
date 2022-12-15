<?php
$Table_Name = $_POST['Table_Name'];
echo $Table_Name; 
?>
<hr/>
<div>
<?php $query = "select * from $Table_Name"?>
<?php include 'in-show-div.php'?>
</div>
</body>
</html>