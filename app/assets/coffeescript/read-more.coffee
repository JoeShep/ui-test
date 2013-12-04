  # As an example of graceful degradation (Well, you can judge the 'graceful' part) I changed the base CSS to show the entire 'read more' div and to hide the button.
  # Then I added CSS to override the style sheet if user has JS turned on.
  # Removed 'animate' and replaced with jQuery toggled classes, and set the div height in the CSS
$ ->

  LP.readmore = (->

    $(".read-more-container").toggleClass('rm-expanded rm-closed')
    $(".expand-btn").removeClass('btn-hidden')

    return {
      open : $('.expand-btn').on 'click', ->
        if $('.read-more-container').hasClass('rm-expanded')
          $('.read-more-container').toggleClass('rm-expanded rm-closed')
          $(this).text('Read more')
        else
          $('.read-more-container').toggleClass('rm-closed rm-expanded')
          $(this).text('Read less')
        false
    }
  )()