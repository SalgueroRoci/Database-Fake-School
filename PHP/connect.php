<?php

 $link = mysql_connect('ecsmysql', 'cs332h25', 'paigahcu');
 if (!$link) {
 die('Could not connect: ' . mysql_error());
 }
 echo 'Connected successfully<p>';

  mysql_select_db("cs332h25",$link);
?>