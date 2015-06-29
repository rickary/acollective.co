if ($(window).width() > 600) {
  fullHeight();
  twoThirds();
}

$(window).resize(function() {
  if ($(window).width() > 600) {
	 $('.js-fullHeight').height(($(window).height()-320));
   twoThirds();
  }
	
});


function fullHeight() {
    $('.js-fullHeight').height($(window).height()); 
}

function twoThirds() {
	$('.js-twoThirds').height(($(window).height()*0.66));
}

$('a[href^="#"]').on('click',function (e) {
    e.preventDefault();

    var target = this.hash;
    var $target = $(target);

    $('html, body').stop().animate({
        'scrollTop': $target.offset().top
    }, 300, 'swing', function () {
        window.location.hash = target;
    });
});


$('#form1_contact').submit(function(){ 
  $.ajax({
    type: "POST",
    data: $('#form1_contact').serialize(),
    dataType: "html",
    timeout: 8000,
    cache: true
  }).done(function(data) {
    if(data.indexOf("SUCCESS")) {
      // code for success goes here
      $('#form1_contact').replaceWith('<p>Thanks for your enquiry. We’ll get back to you within 2 working days.</p>');

      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 300, 'swing', function () {
          $('#enquire') = target;
      });
    } else {
      $('#form1_contact').append('<p>Sorry, there was an error. Please try again or email us at <a href="mailto:membership@acollective.co">membership@acollective.co</a>.');
    }
  }).fail(function() {
    // code for failure goes here
    $('#form1_contact').append('<p>Sorry, there was an error. Please try again or email us at <a href="mailto:membership@acollective.co">membership@acollective.co</a>.');
  });
  return false;
});



$('#form1_coworking').submit(function(){ 
  $.ajax({
    type: "POST",
    data: $('#form1_coworking').serialize(),
    dataType: "html",
    timeout: 8000,
    cache: true
  }).done(function(data) {
    if(data.indexOf("SUCCESS")) {
      // code for success goes here
      $('#form1_coworking').replaceWith('<p>Thank you. Your application is pending and we’ll be in touch soon.</p>');

      $("html, body").animate({ scrollTop: $('#top').height() }, 300);


    } else {
      $('#form1_coworking').append('<p>Sorry, there was an error. Please try again or email us at <a href="mailto:membership@acollective.co">membership@acollective.co</a>.');
    }
  }).fail(function() {
    // code for failure goes here
    $('#form1_coworking').append('<p>Sorry, there was an error. Please try again or email us at <a href="mailto:membership@acollective.co">membership@acollective.co</a>.');
  });
  return false;
});