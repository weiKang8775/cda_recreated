// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("trix")
require("@rails/actiontext")
require('jquery')



$(document).on('turbolinks:load', function() {

  // Smooth Scrolling
  $('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .on("click", function (event) {
      // On-page links
      if (
          location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
          &&
          location.hostname == this.hostname
      ) {
          // Figure out element to scroll to
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
          // Does a scroll target exist?
          if (target.length) {
              // Only prevent default if animation is actually gonna happen
              event.preventDefault();
              $('html, body').animate({
                  scrollTop: target.offset().top
              }, 500, function () {
                  // Callback after animation
                  // Must change focus!
                  var $target = $(target);
                  $target.trigger("focus");
                  if ($target.is(":focus")) { // Checking if the target was focused
                      return false;
                  } else {
                      $target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
                      $target.trigger("focus") // Set focus again
                  };
              });
          }
      }
  });

  $('.sidebar__logo').on('click', function() {
    var menu = $('.sidebar__menu');
    menu.slideToggle(200);
  });
})