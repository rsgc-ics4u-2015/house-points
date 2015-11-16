<!DOCTYPE html>
<html>
    <head>
        <title>RSGC House Points</title>
        <link rel="stylesheet" type="text/css" href="css/profile.css">
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
        
        <header></header>
        <div class="content">
            <div class="clubDescription">
                <table>
                    <tr>
                        <td>This club offers blah blah blah blah blah blah blah blah blah blah blah blah</td>
                    </tr>
                </table>
            </div>
            <h2 class="name">Club Name</h2>
            <div class="Day">
               Every Thursday
            </div>
            <div class="points">
                <span class="points" id="points1">50</span> points
            </div>
            <h3 class="extrac">Teacher Advisors</h3>
            <ul>
                <li>Mr. Ser</li>
                <li>Ms. Paper</li>
            </ul>
            <button class="addClub" type="button">Join Club</button>
            <hr>
            
        </div>
    </body>
</html>