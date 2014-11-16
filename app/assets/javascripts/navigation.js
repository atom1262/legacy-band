$(document).ready(function() {

  var nb = $(".nav-bar");
  var nbs = "nav-bar-scrolled";
  var hdr = $('header').height();

  $(window).bind('scroll', function() {
    if ($(this).scrollTop() > hdr) {
      nb.addClass(nbs);
    } else {
      nb.removeClass(nbs);
    }
  })
});
