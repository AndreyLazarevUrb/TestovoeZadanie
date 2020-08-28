
<html>

<head>
    <meta charset="utf-8">
    <title>Сайт</title>
    <script src="js/jquery.js"></script>
    <link href="style.css" rel="stylesheet">
</head>

<body>

<div id="header">
    <input type="button" value="Редиктировать" id="redaction" onclick="$('#login_form').show()">
    <img id="image" src="images/Zadach.png">
</div>

<?php

require_once 'db.php';

if(isset($_POST['loginreg']) && isset($_POST['emailreg']) && isset($_POST['passwordreg'])){

    $loginreg = $_POST['loginreg'];
    $emailreg = $_POST['emailreg'];
    $passwordreg = $_POST['passwordreg'];

    mysqli_query($connect, "INSERT INTO `users` ( `username`, `email`, `password`) VALUES ('$loginreg', '$emailreg', '$passwordreg')");

    echo "Регистраци прошла успешно! Теперь при авторизации на <a href='Index.php'>сайте</a> вы можете редактировать и удалать записи.";

}

?>
</body>

</html>

