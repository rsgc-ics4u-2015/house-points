
<!DOCTYPE html>
<!-- Purpose: After a teacher has logged in they will be directed to this page.
  - List of Clubs
  - Teacher picture
Date:Oct 20
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>
      PntTrckr
      </title>
        <link rel="stylesheet" href="../html/css/profile.css" type="text/css"/>
  </head>
  <body>
    
    <?php include 'db.php'; ?>
    
    <header>
      <h3>Teacher Page</h3>
    </header>
    <div class="content">
      <div class="profileBoundery">
        <img class="profileImg" src="assets/images/id.png">
      </div>
      <h2>Clubs</h2>
        <fieldset class="clubs">
              <h3>
                  Photography Club
              </h3>
              <p>
                Tuesdays At Lunch
              </p>
              <p>Co-Supervisors:</p>
              <p>Student Leader: Cam Raymond</p>
              <button href="VinylClub.html" type="clubButton">
                  Vinyl Club
              </button>
              <h3>
                  Speaking Union
              </h3>
              <p>
                Mondays At Lunch
              </p>
              <p>Co-Supervisors: John Lambersky</p>
              <p>Student Leader: Quinn Dartwig</p>
              <button href="VinylClub.html" type="clubButton">
                  Vinyl Club
              </button>
        </fieldset>
      <h2>Attendance</h2>
      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
    </div>
  </body>
</html>