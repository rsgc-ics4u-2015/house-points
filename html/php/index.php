<!DOCTYPE html>

<!--
    This HTML page will be the Home page of the House Point Webpage.
    The Webpage will contain:
    - A Search Tab, to connect students to their house standings
    - Then Below the Search Tab, a button leading to Each Houses' Stats
    - A Table with the current house standings
    - The Previous Year's House Cup Winner
    - A Login: Pin at the bottom of the page
-->
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>RSGC House Points</title>
        <link rel="stylesheet" href="../css/profile.css" type="text/css"/>
    </head>git 
    <script>
        function $(id){
           return document.getElementById(id);
        }
        function login(){
            $("code")
            
        }
    </script>
    <body>
        
        <?php include 'db.php'; ?>
        
        <header>
        <h3 text-align = "center" >Royal St. Georges College House Point Tracker</h3>
        <table class= "SearchTable">
            <tr>
				<td>Name: </td>
				<td> <input type= "text" name="name"></input></td>
				<td><button  class = "searchButton" onclick = "search()">SEARCH</button></td>
			</tr>
        </table>
        </header>
        <div class = "content">
        <table class = "HouseTable House">
            <tr>
                <td class = "center"><button onclick = "house()" class="we">WEST</button></td>
                <td class = "center"><button onclick = "house()" class="ca">CANT</button></td>
                <td class = "center"><button onclick = "house()" class="wi">WINCH</button></td>
                <td class = "center"><button onclick = "house()" class="yo">YORK</button></td>
            </tr>
        </table>
        <h2>Current House Standing:</h2>
        <p class="standings" onload ="houseStandings()">
            <ol class="House">
                <li>CANT</li>
                <li>WINCH</li>
                <li>YORK</li>
                <li>WEST</li>
            </ol>
        </p>
        <table class= "LoginTable">
            <tr>
				<td>Pin: </td>
				<form action="login.php">
				    <td><input type= "text" name="name" id="code"></td>
				    <td><input type="submit" value="Submit" onclick = "login()"></td>
				</form>
			</tr>
        </table>
        <!-- load scripts at the bottom of your page -->
        <script src="js/site.js"></script>
        </div>
    </body>
</html>