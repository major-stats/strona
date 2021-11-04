<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST">
    
        <label>imie</label>
        <input type="text" name="imie">
        <label>nazwisko</label>
        <input type="text" name="nazwisko">
        <input type="submit" name="submit" value="wyslij">

    </form>



    <?php
    if(isset($_POST['submit'])){
        if(!empty($_POST['imie']) && !empty($_POST['nazwisko'])){

    
    
     $dbhost = "localhost";
     $dbname = "ok";
     $dbuser = "root";
     $dbpassword = "";
     $imie = $_POST['imie'];
     $nazwisko = $_POST['nazwisko'];
     $db_conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpassword);
  
     $db_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    
     
    $sql = "INSERT INTO dane (imie,nazwisko) VALUES ('$imie','$nazwisko')";
    $db_conn->exec($sql);
        }
    }
    $db_conn = null;
    ?>
</body>
</html>