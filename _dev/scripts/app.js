
$('.js-hero').css('height', $(window).height());


$(document).ready(function(){
    var length = $(".js-hero-captions li").length;
	var ran = Math.floor(Math.random()*length) + 1;
	$(".js-hero-captions li:nth-child(" + ran + ")").css('display', 'table-cell');
});



$.fn.randomize = function(selector){
    var $elems = selector ? $(this).find(selector) : $(this).children(),
        $parents = $elems.parent();

    $parents.each(function(){
        $(this).children(selector).sort(function(){
            return Math.round(Math.random()) - 0.5;
        // }). remove().appendTo(this); // 2014-05-24: Removed `random` but leaving for reference. See notes under 'ANOTHER EDIT'
        }).detach().appendTo(this);
    });

    return this;
};


$('.js-randomOrder').randomize();

