<!DOCTYPE html>
<html>
    <head>
        <title>RSGC House Points</title>
        <link rel="stylesheet" href="../css/profile.css" type="text/css"/>
        <!--<script type="text/javascript" src="https://www.google.com/jsapi"></script>-->
        <!--<script type="text/javascript" src="html/js/site.js"></script>-->
    </head>
    <body>
        <?php
  // set database connection parameters
  $host = "127.0.0.1";
  $user = "rsgc_hill_r";
  $pass = "";
  $db = "housepoints";
  $port = 3306;
  
  // establish the connection
  $connection = mysqli_connect($host, $user, $pass, $db, $port) or die(mysql_error());
  ?>
        <header>Private <span class="access">(Ross Hill, Faculty, House Captains)</span> <span class="edit">edit</span></header>
        <div class="content">
            <div class="profileBoundery">
                <img class="profileImg" src="assets/images/id.png">
            </div>
            <h2 class="name">First Last <span class="grade"> - 12</span></h2>
            <div class="House">
                Westminster
            </div>
            <div class="points">
                <span class="points" id="points1">438</span> points
            </div>
            <h3 class="extrac">Clubs & Teams</h3>
            <ul>
                <li>Speaking Union</li>
                <li>Cross Country Running</li>
                <li>Gamers' Union</li>
                <li>Vinyl Club</li>
                <li>Photography Club</li>
            </ul>
            <input type="text"></input>
            <button class="add" type="button">+</button>
            <hr>
            <h3 class="Involvement">Involvement:</h3>
            
        </div>
    </body>
</html>