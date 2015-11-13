<!DOCTYPE html>
<html>
<body>

<?php
  // set database connection parameters
  $host = "127.0.0.1";
  $user = "rsgc_edwards_g";
  $pass = "";
  $db = "housepoints";
  $port = 3306;
  
  // establish the connection
  $connection = mysqli_connect($host, $user, $pass, $db, $port) or die(mysql_error());
  ?>

<form action="InputHandler.php" method="post">
  <input type="radio" name="sex" value="Male" checked> Male
  <br>
  <input type="radio" name="sex" value="Female"> Female
  <p><input type="submit" name=""/></p>
</form> 

</body>
</html>