//------------- index.html

// Slideshow Setas - Fade das setas, se o rato não estiver no header

$('.home-header').hover(function(){
    $('.arrows').fadeIn();
    $('.arrows').css('opacity', 0.8);

});
$('.home-header').mouseleave(function(){
    $('.arrows').fadeOut();

});


// Slideshow - Passa para a próxima div ou div anterior, ao clicar nas setas

var slideIndex = 0;

showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function showSlides(n) {
    var slides = document.getElementsByClassName("slide");
    slideIndex = (slides.length + n) % slides.length;
    for(var i = 0; i < slides.length; i++){
        slides[i].style.display = "none";
    }
    slides[slideIndex].style.display = "block";
}


