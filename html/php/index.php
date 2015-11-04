<?php
// A simple web site in Cloud9 that runs through Apache
// Press the 'Run' button on the top to start the web server,
// then click the URL that is emitted to the Output tab of the console

echo 'Hello world from Cloud9!';

//set database connections
$host = "127.0.0.1";
$user = "rsgc_edwards_g";
$pass = "";
$db = "mydb";
$port = 3306;
$connection = mysqli_connect($host, $user, $pass, $db, $port) or die(mysql_error());

// perform a query to make sure it's working
$query = "SELECT * FROM student;";
$result = mysqli_query($connection, $query);

//Iterate over the result set
while($row = mysqli_fetch_assoc($result)){
    echo "The Id is: " . $row['id'] . " and the name is: " . $row['name'];
}

?>