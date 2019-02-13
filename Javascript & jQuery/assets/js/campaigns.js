//------------- campanhas.html

// BTN "Ver Mais"

var counter = 0;

function showMore() {
    var limit = counter + 8;
    var articles = document.getElementsByClassName("load");
    for (counter; counter < limit; counter++) {
        articles[counter].style.display = "block";
    }
    if(articles.length - counter <= 0)
        toggleLoadMoreButton(0);
}

showMore();

function toggleLoadMoreButton(size) {
    var button = document.getElementById("load-more");
    if (size <= 8) {
        button.style.display = "none";
    }
    else{
        button.style.display = "block";
    }
}

toggleLoadMoreButton(document.getElementsByClassName("load").length);

// Filtros

function Filter(category, button) {
    var len = 1;
    var campaigns = document.getElementsByClassName("load");
    for (var i = 0; i < campaigns.length; i++) {
        campaign = campaigns[i];
        if (len <= 8 && (campaign.dataset.cat.includes(category) || button == 1)) {
            campaign.style.display = "block";
            len++;
        }
        else
            campaign.style.display = "none";
    }
    toggleLoadMoreButton(len);
    var filterButtons = document.getElementsByClassName("filter");
    for (var i = 0; i < filterButtons.length; i++) {
        filterButtons[i].classList.remove("active-filter");
    }
    document.getElementById("button"+button).classList.add("active-filter");
}


// Menu - Filtros Mobile

$('.filters-mobile').click(function () {
    $('.categories').fadeToggle();
});