$(document).ready(function() {
  var nb = $(".nav-bar"),
      nbs = "nav-bar-scrolled",
      hdr = $(".header").height(),
 sections = $(".section"),
 nav_height = nb.outerHeight();

  $(window).scroll(function() {
    if( $(this).scrollTop() > hdr ) {
      nb.addClass(nbs);
    } else {
      nb.removeClass(nbs);
    }
    var cur_pos = $(this).scrollTop();
    sections.each(function() {
      var top = $(this).offset().top-nav_height,
        bottom = top + $(this).outerHeight();

      if(cur_pos >= top && cur_pos <= bottom) {
        nb.find("a").removeClass("active");
        sections.removeClass("active");
        $(this).addClass("active");
        nb.find('a[href="#'+$(this).attr('id')+'"]').addClass('active');
      }
    });
  });
});
