 //---------------- Campaign Page

// popup para adicionar nova doacao

var donations = document.getElementsByClassName('money');

$('.donate-button').click(function () {
    $('#donate-here').slideDown();

    $('.donate-content').click(function (event) {
        event.stopImmediatePropagation();
    });

    $('.submit-donation').click(function () {
        $('#donate-here').slideUp();
        var newDonation = $('#new-donation').val();

        if(newDonation == "" || newDonation == 0 || !$.isNumeric(newDonation)){
            
        }else{
        $(".entries").prepend('<div class="donation">'+
        '<div class="img-border"><img src="assets/img/donors/4.jpeg"></div>'+
        '<div class="content"><p class="name">Matilde Silva</p>'+
            '<p class="comment">Lorem ipsum dolor sit amet, consectetur adipiscing elit.'+
            '</p>'+
            '<p class="donation-val"><span class="'+ donations +'">'+ newDonation +'</span>€</p>'+
        '</div>'+
        '</div>');
            
        }

    });
    $('#donate-here').click(function () {
        $('#donate-here').slideUp();
    });
});

// Detalhes - Doações

// - Calculo - Valor Angariado - Conta todas as Doações "publicadas"

 var donationsTotal = 0;
 for (let i = 0; i < donations.length; i++) {
    donationsTotal += parseFloat(donations[i].innerHTML);
 }

//-- Coloca o Valor Angariado na Página

document.getElementById('donations-money').innerHTML = "Valor angariado: "+donationsTotal+"€";

// - Calcula o número total de pessoas que doaram

var donorsTotal = document.getElementsByClassName('donation').length;

//-- Coloca o número total de pessoas na Página

document.getElementById('donors-number').innerHTML = donorsTotal;



//- Calculo da percentagem angariada, com relação com o objectivo da campanha

var goal = document.getElementById('total-amount');

var percentageDonated = donationsTotal*100/goal.innerHTML;

//-- Coloca a percentagem na página

document.getElementById('percentage').innerHTML = percentageDonated+"%";

document.querySelector('.progress-filter').style.width = percentageDonated+"%";




