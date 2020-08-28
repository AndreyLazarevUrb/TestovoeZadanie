<?php

require 'db.php';

$result1 = mysqli_query($connect,"SELECT * FROM `objective`");
$answer = "";

for ($row_no = $result1->num_rows - 1; $row_no >= 0; $row_no--) {
    $result1->data_seek($row_no);
    $row = $result1->fetch_assoc();
    $answer = $answer.'<p id = '.$row["id"].' style="border: 3px solid #FFFFE0">'.$row["username"].'<br>'.$row["email"].'<br>'.$row["Text"].'<br></p>';
}
$result = array('answer' => $answer);
echo json_encode($result);?>