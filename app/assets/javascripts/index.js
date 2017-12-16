$(document).ready(function(){
    $('input:radio[name="bq12"]').change(
        function(){
            if ($(this).is(':checked') && $(this).val() == '1') {
                $('.survey-checkbox-question').css("display", "none");
            }
            else {
                $('.survey-checkbox-question').css("display", "block");
            }
        }
    );

    $('input[type=radio], input[type=checkbox]').on('click', function () {
        $.ajax({
            contentType: "application/json; charset=utf-8",
            success: function () {
                if (parseInt(24) <= parseInt($('#collapseOne input[type=radio]:checked').length)) {
                    $('.btn-part1').removeAttr("disabled");
                    $('.btn-part1').text('Next');
                }
                if (24 <= parseInt($('#collapseTwo input[type=radio]:checked').length)) {
                    $('.btn-part2').removeAttr("disabled");
                    $('.btn-part2').text('Next');
                }
                if (10 <= parseInt($('#collapseThree input[type=radio]:checked').length)) {
                    $('.btn-part3').removeAttr("disabled");
                    $('.btn-part3').text('Next');
                }
                var $bq12 = parseInt($('input:radio[name="bq12"]:checked').val());
                if($bq12 == 1) {
                    if (12 <= parseInt($('#collapseFour input[type=radio]:checked').length)) {
                        $('.btn-submit').removeAttr("disabled");
                        $('.btn-submit').text('Submit');
                    }
                } else {
                    if (12 <= parseInt($('#collapseFour input[type=radio]:checked').length)) {
                        if(2 <= parseInt($('#collapseFour input[type=checkbox]:checked').length)) {
                            $('.btn-submit').removeAttr("disabled");
                            $('.btn-submit').text('Submit');
                        }
                    }
                }
            }
        });
    });

    $('.btn-part1').on('click', function () {
        $.ajax({
            contentType: "application/json; charset=utf-8",
            success: function () {
                $('#pBar').css('width', 25+'%');
                $('#pBar').text(25+'%');
                $('#collapseOne').collapse('hide');
                $('#collapseTwo').collapse('toggle');
                var scrollPosition = $("#pBar").offset().top - 200;

                $("html, body").animate({
                    scrollTop: scrollPosition
                }, 100);
            }
        });
    });
    $('.btn-part2').on('click', function () {
        $.ajax({
            contentType: "application/json; charset=utf-8",
            success: function () {
                $('#pBar').css('width', 50+'%');
                $('#pBar').text(50+'%');
                $('#collapseTwo').collapse('hide');
                $('#collapseThree').collapse('toggle');
                var scrollPosition = $("#pBar").offset().top - 200;

                $("html, body").animate({
                    scrollTop: scrollPosition
                }, 100);
            }
        })
    });

    $('.btn-part3').on('click', function () {
        $.ajax({
            contentType: "application/json; charset=utf-8",
            success: function () {
                $('#pBar').css('width', 75+'%');
                $('#pBar').text(75+'%');
                $('#collapseThree').collapse('hide');
                $('#collapseFour').collapse('toggle');
                var scrollPosition = $("#pBar").offset().top - 200;

                $("html, body").animate({
                    scrollTop: scrollPosition
                }, 100);
            }
        })
    });

}); // End of use strict
