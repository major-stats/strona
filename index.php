<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Major Stats</title>
    <link href="css.css" rel="stylesheet" type="text/css">
</head>

<body>

    <div id="body">
        <div id='lista'>
        <nav>
            <ol>
                <li><a href=""></a>
                  <ul>
                    <li><a href=""></a></li>
                  </ul>
                </li>
            
                <li><a href=""></a>
                  <ul>
                    <li><a href=""></a></li>
                  </ul>
                </li>
            
                <li><a href=""></a></li>
            
                <li><a href=""></a>
                  <ul>
                    <li><a href=""></a></li>
                  </ul>
                </li>
              </ol>
        </nav>
    </div>
    <header>
        <h1>Major Stats</h1>
    </header>
<?php
    $conn = mysqli_connect("localhost","root","","major_stats");
    $cmd ="SELECT * from drużyna ";
    $cd = mysqli_query($conn, $cmd);
    

         while ($team = mysqli_fetch_row($cd)){ 
            echo '<div class="team">';
            
            echo '<div class="pic">';
                echo '<img class="picture" src="'.$team[10].'">';
            echo "</div>";
            
            echo '<div class="info">';
                echo '<p class="nazwa">'.$team[1]."</p>";
                echo "<p>".$team[2]."</p>";
                echo "<p>".$team[3]."</p>";
                echo "<p>".$team[4]."</p>";
                echo "<p>".$team[5]."</p>";
                echo "<p>".$team[6]."</p>";
                echo "<p>".$team[7]."</p>";
                echo "<p>".$team[8]."</p>";
                echo "<p>".$team[9]."</p>";
            echo "</div>";

        echo "</div>";
         }



    mysqli_close($conn);
?>

</div>
</body>



</html>