$(document).ready(function(){
  $("#myButton").click(function() {
    $('html, body').animate({
        scrollTop: $("#encre").offset().top
    }, 2000);
});
//Haut, haut, bas, bas, gauche, droite, gauche, droite, B, A
var k = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65],
n = 0;
$(document).keydown(function (e) {
    if (e.keyCode === k[n++]) {
        if (n === k.length) {
            $('.konami').removeClass('hide');
            n = 0;
            return false;
        }
    }else if(e.keyCode === 32){
      $('.konami').addClass('hide');
    }
    else {
        n = 0;
    }
});
});
