(function() {
  $(function() {
    return LP.readmore = (function() {
      $(".read-more-container").toggleClass('rm-expanded rm-closed');
      $(".expand-btn").removeClass('btn-hidden');
      return {
        open: $('.expand-btn').on('click', function() {
          if ($('.read-more-container').hasClass('rm-expanded')) {
            $('.read-more-container').toggleClass('rm-expanded rm-closed');
            $(this).text('Read more');
          } else {
            $('.read-more-container').toggleClass('rm-closed rm-expanded');
            $(this).text('Read less');
          }
          return false;
        })
      };
    })();
  });

}).call(this);
