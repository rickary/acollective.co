/**
 * acollective.co
 * Copyright 2016 Rick Chadwick
 * @author rickary <rick@rickchadwick.co.uk>
 */

$('.js-hero').css('height', $(document).height());


$(document).ready(function(){
    var length = $(".js-hero-captions li").length;
	var ran = Math.floor(Math.random()*length) + 1;
	$(".js-hero-captions li:nth-child(" + ran + ")").css('display', 'table-cell');
});
