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
			
			// . $_POST["cwid"]
			$query = "SELECT CorNo, CorTitle, Grades 
				FROM Enrollment, Course 
				WHERE ECorNo=CorNo AND ECWID=" . $_POST["cwid"];
			$response = mysql_query($query, $link); 
			
			if($response) {
				echo '<table align="left" cellspacing="5" cellpadding="8"> 
				
				<tr>
				<th>Course Section Number</th>
				<th>Course Name</th> 
				<th>Grade</th> 
				</tr>';
				
				while($row = mysql_fetch_array($response)) {
					echo '<tr><td align="left">' . 					 
					$row['CorNo'] . '</td><td align="left">' .
					$row['CorTitle'] . '</td><td align="left">' .
					$row['Grades'] . '</td>' ;
					echo '</tr>';
					
				}
				echo '</table>';
			}
			else if(!isset($_POST["cwid"]) || trim($_POST["cwid"]) == '') {
				echo "You did not fill out the required fields.";
			} 
			else {
				echo "Couldn't issue database query\n";
				echo mysql_error($link); 
			}
				
			mysql_close($link);
		?> 
		
  </div>
</body>
</html>