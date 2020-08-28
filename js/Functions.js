$(document).ready(function () {
    downaldTasks();
    $('#sendObjective').click(function () {
        $.ajax({
            url: 'SaveObjectiveDB.php',
            type: 'POST',
            dataType: 'html',
            data: $('#zadacha').serialize(),
            success: function (response) {
                result = $.parseJSON(response);
                alert(result.answer);
                downaldTasks();
            },
            error: function (response) { // Данные не отправлены
                alert('Ошибка. Данные не отправлены.');
            }
        });
    });
});

function downaldTasks() {
        $.ajax({
            url: 'NonAutorizationDownload.php',
            type: 'POST',
            dataType: 'html',
            data: null,
            success: function (response) {
                result = $.parseJSON(response);
                $('#zadachi').html(result.answer);
            },
            error: function (response) { // Данные не отправлены
                alert('Ошибка. Данные не отправлены.');
            }
        });

}



