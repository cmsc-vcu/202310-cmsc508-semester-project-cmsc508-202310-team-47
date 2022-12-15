<html>
<head>
<title>Hello from PHP sample DB connection app</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
<style> 
#panel, #flip {
  padding: 5px;
  text-align: center;
  background-color: #e5eecc;
  border: solid 1px #c3c3c3;
}

#panel {
  padding: 50px;
  display: none;
  text-align:left;
}
</style>
</head>
<body>
<?php include 'in-dbconn.php' ?>
<style>
h1 {
  text-align: center;
}
h3 {
  text-align: center;
}

form {
  text-align: center;
}
</style>
<h1>Welcome to the Cybersecurity DBMS</h1>

<div id="flip">Click this bar here to slide the panel down or up</div>
<div id="panel">
<h3>Queries Presented to you by Team 47</h3>
The following is a list of all the querie.<br/>
<?php
// Output the <a> element with the href attribute
echo '<a href="http://cmsc508.com/202310/team47/create.php">Click here to create new records</a><br>';
echo '<a href="http://cmsc508.com/202310/team47/view.php">Click here to view records from a table</a><br>';
echo '<a href="http://cmsc508.com/202310/team47/update.php">Click here to update records in a table</a><br>';
echo '<a href="http://cmsc508.com/202310/team47/delete.php">Click here to delete records from a table</a><br>';
?>
</table>
<?php
$dbs = $conn->query( 'SHOW DATABASES' );
//<?php $query = "SHOW DATABASES"?>
</table>
</div>


<h1>20 Queries</h1>
<hr/>
<h2>1. What is the perpetrating location that conducts the most attacks? </h2>
<div>
<?php $query = "SELECT * from perpetrator_location;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>2. What is the exact time of the attacks that happened between 4pm-5pm?</h2>
<div>
<?php $query = "SELECT * from attackIDS;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>3. How many records are in the Offense Detector table?</h2>
<div>
<?php $query = "SELECT * from recordsOffenseDetector;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>4. How many records are in the Attack table?</h2>
<div>
<?php $query = "SELECT * from recordsInAttack;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>5. What are the top 3 companies that has the most attacks in Virginia?</h2>
<div>
<?php $query = "SELECT * from top3companies;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>6. Which company has the highest number of attacks?</h2>
<div>
<?php $query = "SELECT * from mostFrequent;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>7. What all companies does Red Team work for?</h2>
<div>
<?php $query = "SELECT * from redTeamWork;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>8. Which company had the most SQL injection vector in the city of Richmond in the last month (highest to lowest)?</h2>
<div>
<?php $query = "SELECT * from SQLinjection;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>9. What are the attack IDs of all attacks that used a worm as a vector?</h2>
<div>
<?php $query = "SELECT * from wormAttackID;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>10. What is the vector that is most used between attackers?</h2>
<div>
<?php $query = "SELECT * from frequentVector;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>11. display the date and time of each attack on CGI</h2>
<div>
<?php $query = "SELECT * from timePeriod;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>12. Display the OffenseDetector and company name of each company that only has 1 attack</h2>
<div>
<?php $query = "SELECT * from offenseDetectorOfMostAttacks;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>13. What company/companies had the highest impact?</h2>
<div>
<?php $query = "SELECT * from companyHighestImpact;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>14. What systems were affected by a DDOS attack on the company Domminion Energy?</h2>
<div>
<?php $query = "SELECT * from affectedSystemDDOs;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>15. Display the location of all companies that received an SQL Injection.</h2>
<div>
<?php $query = "SELECT * from companySQLLocation;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>16. What all companies does Team Green work for?</h2>
<div>
<?php $query = "SELECT * from TeamGreen;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>17. Return the Company name, time, and dates of all attack.</h2>
<div>
<?php $query = "SELECT * from mostRecentAttack;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>18. What is the report for CGI?</h2>
<div>
<?php $query = "SELECT * from reportCGI;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>19. What is the report for CGI and Dominion Energy?</h2>
<div>
<?php $query = "SELECT * from reportCgiDom;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>20. List the reports sorted by highest impact.</h2>
<div>
<?php $query = "SELECT * from ReportImpact;"?>
<?php include 'in-show-table.php'?>
</div>




