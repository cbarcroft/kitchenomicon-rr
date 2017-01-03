// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    $('.clickable-link-item').click(function () {
        window.location = $(this).data('url');
    });

    // Find the current highest 'order' number for instructions, and set the newly inserted step's order number to that plus one.
    $('.instruction-links').on('cocoon:after-insert', function(e, insertedItem) {
        insertedItem.find('.recipe_instructions_order').find('input').val(getMaxInstructionOrder() + 1)
    });

    $('div.movediv').each(function(){
        validateButtons($(this));
    });

    $('body').on('click', 'button.moveup', function() {
        var this_element = $(this).parent().parent();
        var target_element = this_element.prev('div.movediv');
        this_element.insertBefore(target_element);
        swapOrders(this_element, target_element);
    });

    $('body').on('click', 'button.movedown', function() {
        var this_element = $(this).parent().parent();
        var target_element = this_element.next('div.movediv');
        this_element.insertAfter(target_element);
        swapOrders(this_element, target_element);
    });

    function swapOrders(element1, element2){
        input1 = element1.find('.order-input').first();
        input2 = element2.find('.order-input').first();
        temp = input1.val();
        input1.val(input2.val());
        input2.val(temp);
        validateButtons(element1);
        validateButtons(element2);
    }

     function validateButtons(element){
        input = element.find('.order-input').first();
        if (input.val() == 1 ){
            element.find('button.moveup').first().prop("disabled",true);
        } else {
            element.find('button.moveup').first().prop("disabled",false);
        }

        if (input.val() == getMaxInstructionOrder()){
            element.find('button.movedown').first().prop("disabled",true);
        } else {
            element.find('button.movedown').first().prop("disabled",false);
        }
     }

    function getMaxInstructionOrder(){
        var max = 0;
        $('.recipe_instructions_order').find('input').each(function() {
            var cur = parseInt($(this).val());
            max = (cur > max) ? cur : max;
        });
        return max;
    }

    varSwiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
    $('.swiper-button-next').click(function(){varSwiper.slideNext()})
    $('.swiper-button-prev').click(function(){varSwiper.slidePrev()})
});