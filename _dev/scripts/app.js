
$('.js-hero').css('height', $(window).height());


$(document).ready(function(){
    var length = $(".js-hero-captions li").length;
	var ran = Math.floor(Math.random()*length) + 1;
	$(".js-hero-captions li:nth-child(" + ran + ")").css('display', 'table-cell');
});
