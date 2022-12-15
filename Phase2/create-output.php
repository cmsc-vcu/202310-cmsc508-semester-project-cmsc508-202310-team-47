
<?php 

$company_name = $_POST['company_name'];
$attack_date = $_POST['attack_date'];
$vector_of_execution = $_POST['vector_of_execution'];
$impact = $_POST['impact'];

echo "Here is the data created and added to the database<br>";
echo "<br>Company Name: $company_name<br>Attack Date: $attack_date<br>
Vector of Execution: $vector_of_execution<br>
Impact: $impact";



