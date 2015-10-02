// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    $('.clickable-link-item').click(function () {
        window.location = $(this).data('url');
    });

    // Find the current highest 'order' number for instructions, and set the newly inserted step's order number to that plus one.
    $('.instruction-links').on('cocoon:after-insert', function(e, insertedItem) {
        var max = 0;
        $('.recipe_instructions_order').find('input').each(function() {
            var cur = parseInt($(this).val());
            max = (cur > max) ? cur : max;
        });

        insertedItem.find('.recipe_instructions_order').find('input').val(max + 1)
    });

    varSwiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination'
    });
    $('.swiper-button-next').click(function(){varSwiper.slideNext()})
    $('.swiper-button-prev').click(function(){varSwiper.slidePrev()})
});