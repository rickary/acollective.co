/**
 * ukcabins.com
 * 2014/15 - website for ukcabins.com by Designition
 * @author rickary <hello@madeinbeta.co.uk>
 * @version 2.0.0
 */
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