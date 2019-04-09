'use script'
$(function() {


let createMeal = $('preparing_meal').on('submit', postMeal)

    function postMeal(evnt) {
        evnt.preventDefault();

        $('posted_meal').html('')
        let mealInfo = this.elements;
        let index = 0;
        while (mealInfo.item(index) !== null){
            let confirmation = mealInfo.item(index);
            confirmation = $(confirmation);
            let name = confirmation.attr('name');
            let price = confirmation.val();
            $('#posted_meal').append('<p>' + name + price + '</p>');
            index++;
        }

        
    }


























});
