$(document).ready(function(){
    var id;
    $('input:radio[name="bq12"]').change(
        function(){
            if ($(this).is(':checked') && $(this).val() == '1') {
                $('.survey-checkbox-question').css("display", "none");
            }
            else {
                $('.survey-checkbox-question').css("display", "block");
            }
        });

    $('.btn-deployment').on('click', function () {

        $.ajax({
            contenType: "application/json; charset=utf-8",
            success: function () {
                $('#collapseOne').collapse('hide');
                $('#collapseTwo').collapse('toggle');
                $('html').scrollTop(0);
            }
        });

    });

    $('.btn-recognize').on('click', function () {

        $.ajax({
            contentType: "application/json; charset=utf-8",
            success: function () {
                $('#collapseTwo').collapse('hide');
                $('#collapseThree').collapse('toggle');
                $('html').scrollTop(0);
            }
        })
    });

}); // End of use strict
