//------------- Todas as Páginas

// Menu em Mobile - Toggle Fade

$('.icon').click(function () {

    $('.menu').click(function (event) {
        event.stopImmediatePropagation();
    });
    $('.menu').fadeToggle();
});

// Popup Login - Slide 

$('.access').click(function () {
    $('#access').slideDown();

    $('.access-content').click(function (event) {
        event.stopImmediatePropagation();
    });

    $('#access').click(function () {
        $('#access').slideUp();
        $('.menu').fadeIn();
    });

});


