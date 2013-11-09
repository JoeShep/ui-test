(function() {
  $(function() {
    return window.LP = (function() {
      return {
        lightbox: $('.images-container').on('click', 'img', function() {
          var closePic, image, lightboxContainer;

          image = $('<img/>').addClass('lightboxImage').attr('src', $(this).attr('src'));
          lightboxContainer = $('<div/>').addClass('lightbox').append(image);
          $('body').append(lightboxContainer).on('keyup', function(e) {
            if (e.keyCode === 13 || e.keyCode === 27) {
              return closePic();
            }
          });
          $('.lightbox').on('click', function() {
            return closePic();
          });
          return closePic = function() {
            return $(".lightbox").fadeOut("normal", function() {
              return $(this).remove();
            });
          };
        })
      };
    })();
  });

}).call(this);
