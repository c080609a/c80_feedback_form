
// =[ interface ]=====================================================================================================================

var $formHolder;
var markInvalidateInProgress = false;
var markWasPasted = false;
var fFeedbackFormInvalidate;
var fFeedbackFormOnScroll;

// =[ implementation ]=====================================================================================================================

$(function () {
    if ($("body#contacts").length == 1) {

        $formHolder = $("div#ff");

        fFeedbackFormInvalidate = function () {
            if (!markInvalidateInProgress) {
                markInvalidateInProgress = true;

                if (!markWasPasted) {

                    $('<div id="loading"></div>').appendTo($formHolder);

                    $.ajax({
                        url: '/give_me_form',
                        type: 'POST',
                        dataType: 'script'
                    }).done(function (data, result) {
                        if (result == "success") {
                            markWasPasted = true;
                        }
                    });
                }
            }
        };

        fFeedbackFormOnScroll = function(event) {
            var closeToBottom = jQuery(window).scrollTop() >= 0;
            if (closeToBottom) {
                fFeedbackFormInvalidate();
            }
        };

        // start
        $(document).bind('scroll', fFeedbackFormOnScroll);
        setTimeout(function () {
            fFeedbackFormOnScroll();
        },300);

    }
});