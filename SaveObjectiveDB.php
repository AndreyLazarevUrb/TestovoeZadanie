<?php

require "db.php";

$name = $_POST["namezad"];
$email = $_POST["emailzad"];
$objective = $_POST["objectivee"];

$a = mysqli_query($connect, "INSERT INTO objective (username,email,Text) VALUES ('".$name."','".$email."','".$objective."')");

$result = array('answer' => $objective);
echo json_encode($result);?>