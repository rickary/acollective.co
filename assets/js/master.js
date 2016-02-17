/**
 * acollective.co
 * Copyright 2016 Rick Chadwick
 * @author rickary <rick@rickchadwick.co.uk>
 */

$('.js-hero').css('height', $(window).height());


$(document).ready(function(){
    var length = $(".js-hero-captions li").length;
	var ran = Math.floor(Math.random()*length) + 1;
	$(".js-hero-captions li:nth-child(" + ran + ")").css('display', 'table-cell');
});


$(".js-slides").responsiveSlides({
  auto: true,             // Boolean: Animate automatically, true or false
  speed: 500,            // Integer: Speed of the transition, in milliseconds
  timeout: 6000,          // Integer: Time between slide transitions, in milliseconds
  pager: true,           // Boolean: Show pager, true or false
  nav: false,             // Boolean: Show navigation, true or false
  random: true,          // Boolean: Randomize the order of the slides, true or false
  pause: false,           // Boolean: Pause on hover, true or false
  pauseControls: true,    // Boolean: Pause when hovering controls, true or false
  prevText: "Previous",   // String: Text for the "previous" button
  nextText: "Next",       // String: Text for the "next" button
  maxwidth: "",           // Integer: Max-width of the slideshow, in pixels
  navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
  manualControls: "",     // Selector: Declare custom pager navigation
  namespace: "slides_",   // String: Change the default namespace used
  before: function(){},   // Function: Before callback
  after: function(){}     // Function: After callback
});