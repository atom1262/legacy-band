$(document).ready(function() {

  var  mn = $(".nav-bar");
      mns = "nav-bar-scrolled";
      hdr = $('header').height();

  $(window).scroll(function() {
    if( $(this).scrollTop() > hdr ) {
      mn.addClass(mns);
    } else {
      mn.removeClass(mns);
    }
  });
});
