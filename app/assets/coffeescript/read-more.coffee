$ ->

  window.LP = (->

    initialHeight = 400

    return {

      open : $('.button').on 'click', ->
        if $('.read-more-container').height() > 400
          $('.read-more-container').animate(
            height: initialHeight
          , 500)
          $(this).text('Read more')
        else
          $('.read-more-container').animate(
            height: 1600
          , 500)
          $(this).text('Read less')
        false

      // For added user-friendliness I added a click function to close the lightbox. Also threw in a fadeOut for a smoother transition before removing from the DOM.
      // Made closing the image a separate function for DRY purposes.
      lightbox : $('.images-container').on 'click', 'img', ->
        image = $('<img/>').addClass('lightboxImage').attr('src', $(this).attr('src'))
        lightboxContainer = $('<div/>').addClass('lightbox').append(image)

        $('body').append(lightboxContainer).on 'keyup', (e) ->
          if e.keyCode is 13 or e.keyCode is 27
            closePic()

        $('.lightbox').on 'click', ->
          closePic()

        closePic = ->
          $(".lightbox").fadeOut "normal", ->
            $(this).remove()

    }

  )()