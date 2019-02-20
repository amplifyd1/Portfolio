function blurryScroll() {$(document).ready(function() {
  // add event listener on window, on scroll type of event
    $(window).scroll(function(e) {
        // increase opcatiy the more you scroll

        var s = $(window).scrollTop(),
            opacityVal = (s / 300);

        $('.blurred-image').css('opacity', opacityVal);
        $('.blur').css('opacity', (1 - opacityVal * 1.5));
    });
});
}

export { blurryScroll }
