<html>

<head>
    <meta charset="utf-8">
    <title>Задачник</title>
    <script src="js/jquery.js"></script>
    <script src="js/Functions.js"></script>
    <link href="style.css" rel="stylesheet">
</head>

<body>
<div id="header">
    <input type="button" value="Редактировать" id="redaction" onclick="$('#login_form').show()">
    <img id="image" src="images/Zadach.png">
</div>

    <form id="zadacha" method="post" action="">
        <input class="otstup" type="text" placeholder="Имя" name="namezad" id="namezad" maxlength="15"  size="12" class="pole"><br>
        <input class="otstup"type="text" placeholder="email" name="emailzad" id="emailzad" maxlength="15"  size="12" class="pole"><br>
        <textarea class="otstup" placeholder="Текст задачи" name="objectivee" id="objective" rows="4" cols="50" id="Text" placeholder=""></textarea><br>
        <input type="button" value="Разместить задачу"  id="sendObjective">
    </form>

    <div id="login_form" hidden>
        <form>
            Имя пользователя: <input type="text" name="loginlog" />
            <p>Пароль: <input type="password" name="passwordlog" />
            <p><input type="submit" value="Войти" />
            <p><input type="button" value="Регистрация" onclick="$('#login_form').hide();$('#reg_form').show()">
            <p><input type="button" value="Скрыть форму" onclick="$('#login_form').hide();">
        </form>
    </div>

    <div id="reg_form" hidden>
        <form action="save_user_db.php" method="post">
            Имя пользователя: <input type="text" name="loginreg" />
            <p>email: <input type="text" name="emailreg" />
            <p>Пароль: <input type="password" name="passwordreg" />

            <p><input type="button" value="Назад" id="back" onclick="$('#reg_form').hide();$('#login_form').show()"/>
            <p><input type="submit" value="Зарегистрироваться" onclick="$('#reg_form').hide();$('#login_form').show()"/>
        </form>
    </div>

    <div id="zadachi">

    </div>

</body>
</html>


