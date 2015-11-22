<!DOCTYPE html>
<html>
    <head>
        <title>RSGC House Points</title>
        <link rel="stylesheet" href="../css/profile.css" type="text/css"/>
        <!--<script type="text/javascript" src="https://www.google.com/jsapi"></script>-->
        <!--<script type="text/javascript" src="html/js/site.js"></script>-->
    </head>
    <body>
        
        <?php include 'db.php'; ?>
        
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
                <span class="points" id="points1">
                
<?php 
            $connection = mysqli_connect($host, $user, $pass, $db, $port) or die(mysql_error());
            $query = "SELECT * FROM student where id=5;";
            $result = mysqli_query($connection, $query); 
            
            echo "<table>";
            echo "<tr>";
            echo "<th>";
            echo "HP total";
            echo "</th>";
            echo "</tr>";
            while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>";
                    echo $row['house_point_total'];
                    echo "</td>";
                    echo "</tr>";
            }
            echo "</table>";
    ?>
  
  </span> points
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