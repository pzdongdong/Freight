$(function(){
	$(".ajaxtable tr:even").addClass("odd");
	
	$(".ajaxtable tr").hover(function(){
		$(this).addClass("hove");
	},function(){
		$(this).removeClass("hove");
	});
	$("div#menu1 ul#main li").OthersFade();
	$("div#menu2 ul#main li").OthersJump();
	$("div#menu3 ul#main li").OthersBlink();
	$("div#menu4 ul#main li").OthersRollUp();
	$("div#menu5 ul#main li").OthersRollDown();
	$("div#menu6 ul#main li").OthersVibrate();
	
});
