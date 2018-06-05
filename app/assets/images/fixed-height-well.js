

$(document).on('turbolinks:load', function() {
    
    var max = 100%

    /* Getting the greatest height */
    $(".well").each(function() {
      max = ($(this).height() > max) ? $(this).height() : max
    })
    
    /* Applying the greatest height to each element */
    $(".well").height(max)
    
    
}