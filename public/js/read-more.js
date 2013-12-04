(function() {
  $(function() {
    return LP.readmore = (function() {
      $(".read-more-expanded").css({
        display: "none"
      });
      $(".expand-btn").removeClass('hidden');
      return {
        open: $('.expand-btn').on('click', function() {
          if ($('.read-more-expanded').hasClass('expanded')) {
            $('.read-more-expanded').slideUp().removeClass('expanded');
            $(this).text('Read more');
          } else {
            $('.read-more-expanded').addClass('expanded').slideDown();
            $(this).text('Read less');
          }
          return false;
        })
      };
    })();
  });

}).call(this);
