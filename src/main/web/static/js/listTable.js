$(function(){
	$("#ajaxtable tr:even").addClass("odd");
	
	$("#ajaxtable tr").hover(function(){
		$(this).addClass("hove");
	},function(){
		$(this).removeClass("hove");
	});
	
	
});
