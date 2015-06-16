fullHeight();
twoThirds();

$(window).resize(function() {
	$('.js-fullHeight').height(($(window).height()-320));
	twoThirds();
})


function fullHeight() {
	$('.js-fullHeight').height($(window).height());
}

function twoThirds() {
	$('.js-twoThirds').height(($(window).height()*0.66));
}