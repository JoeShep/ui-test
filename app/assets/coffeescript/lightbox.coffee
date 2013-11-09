$ ->

  window.LP = (->

    # I removed the height declarations. I persoanlly don't care for setting height for these situations,
    # and this approach is more DRY.
    # As an example of graceful degradation (Well, you can judge the 'graceful' part) I changed the base CSS to show the entire 'read more' div and to hide the button.
    # Then I added CSS to override the style sheet if user has JS turned on.
    # Removed 'animate' and replaced with slideUp and slideDown, because I'm a JQuery fanboy.
    #
    # For easier testing and maintenance I have broken the single JS file into smaller files. If this grew to where it involved requesting/loading a bunch of scripts in the layout head it would be bad 
    # for performance, though. I would address this by employing Rails and its asset pipeline, but that seems beyond the scope of this exercise.
    # If you disagree, I'm happy to give that a whirl.
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