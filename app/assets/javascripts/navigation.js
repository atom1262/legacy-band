$(document).ready(function() {

  var nb = $(".nav-bar");
      nbs = "nav-bar-scrolled";
      hdr = $('header').height();

  $(window).scroll(function() {
    if( $(this).scrollTop() > hdr ) {
      nb.addClass(nbs);
    } else {
      nb.removeClass(nbs);
    }
  });
});
