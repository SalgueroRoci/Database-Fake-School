<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Fullerton University</title>
  <meta name="description" content="Fullerton Database">
  <meta name="author" content="Rocio Andy Rodolfo">

  <link rel="stylesheet" type="text/css" href="main.css">
 
</head>

<body>
  <div id="headermain"></div> 
  <div id="logo"></div> 
  
  <div id="main">
		<div id="nav"> 
			<a href="index.html" class="homenav" >Home</a>
			<a href="student.html" class="homenav" >Students</a>
			<a href="professor.html" class="homenav" >Professor</a>
		</div>
		
		<!-- make the tables here--> 
		<?php 
			require_once('../connect.php'); 
			
			//  $_POST["cno"] $_POST["secno"]
			$query = "SELECT Grades, COUNT(ECWID)  
				FROM Enrollment 
				WHERE ECorNo=" . $_POST["cno"] . 
				" AND ESecNo=" . $_POST["secno"] . 
				" GROUP BY Grades";
			$response = mysql_query($query, $link); 
			
			if($response) {
				echo '<h2>Number of Students per Grade</h2>
				<table align="left" cellspacing="5" cellpadding="8"> 
				<tr><th>Grade</th><th>Students</th></tr>';
				

				while($row = mysql_fetch_array($response)) {
					echo '<tr>';
					echo '<th>' . $row[0] . '</th>';
					echo '<td align="left">' . $row[1] . '</td>';
					echo '</tr>';	
				}
				echo '</tr>';
				echo '</table>';
			}
			else if(!isset($_POST["cno"]) || trim($_POST["cno"]) == '') {
				echo "You did not fill out the required fields.";
			} 
			else if(!isset($_POST["secno"]) || trim($_POST["secno"]) == '') {
				echo "You did not fill out the required fields.";
			} 
			else {
				echo "Couldn't issue database query<p></p>";
				echo mysql_error($link); 
			}
				
			mysql_close($link);
		?> 
		
  </div>
</body>
</html>