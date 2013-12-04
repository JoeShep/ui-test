# Declared LP object so instances of it can be created in separate JS files. But creating this
# global object makes me uncomfortable. Would love to know how to better accomplish this
# without the global object. Then again, maybe using CoffeeScript frees me from this angst. True?

window.LP = {}
$ ->

  LP.lightbox = (->

    # For easier testing and maintenance I have broken the single Coffescript file into smaller files. 

    return {

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