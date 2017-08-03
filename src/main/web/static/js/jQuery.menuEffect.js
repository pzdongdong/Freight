
(function($){
 $.fn.OthersFade= function(options) {

  $.fn.OthersFade.defaults = {
   startOpacity: 1,
   hoverOpacity: 0,
   duration: 2000
  };
  var options = $.extend($.fn.OthersFade.defaults, options);
  var selector = this;
  return this.each(function() {
	$(this).hover(
	
	function(){
	$(this).stop(true,false).animate({opacity: options.startOpacity}, options.duration);
	$(selector).not(this).stop(true,false).animate({opacity: options.hoverOpacity}, options.duration);
	}
	,
	function(){
	$(selector).not(this).stop(true,false).animate({opacity: options.startOpacity}, options.duration);

	});
	
  }); 
 };
 
  $.fn.OthersJump= function(options) {
  $.fn.OthersJump.defaults = {
   jumpHeight: 15,
   jumpDirection: 0,
   duration: 100
  };
  var options = $.extend($.fn.OthersJump.defaults, options);
  var selector = this;
  return this.each(function() {
	$(this).hover(
	
	function(){
	options.jumpDirection == 0 ?
	$(selector).not(this).stop(true,false)
	.animate({marginTop: "-"+( options.jumpHeight)+"px"}, options.duration)
	.animate({marginTop: "0px"}, options.duration)
	:
	$(selector).not(this).stop(true,false)
	.animate({marginTop: ( options.jumpHeight)+"px"}, options.duration)
	.animate({marginTop: "0px"}, options.duration)
	}
	,
	function(){
	options.jumpDirection == 0 ?
	$(this).stop(true,false)
	.animate({marginTop: "-"+( options.jumpHeight)+"px"}, options.duration)
	.animate({marginTop: "0px"}, options.duration)
	:
	$(this).stop(true,false)
	.animate({marginTop: ( options.jumpHeight)+"px"}, options.duration)
	.animate({marginTop: "0px"}, options.duration)

	});
	
  }); 
 };
 
 $.fn.OthersBlink= function(options) {
  $.fn.OthersBlink.defaults = {
   brightness: 0.5,
   duration: 100
  };
  var options = $.extend($.fn.OthersBlink.defaults, options);
  var selector = this;
  return this.each(function() {
	$(this).hover(
	
	function(){

	$(selector).not(this).stop(true,false)
	.animate({opacity: options.brightness}, options.duration)
	.animate({opacity: 1}, options.duration)
	.animate({opacity: options.brightness}, options.duration)
	.animate({opacity: 1}, options.duration);
	}
	,
	function(){
	});
	
  }); 
 };
 
  $.fn.OthersRollUp= function(options) {
  $.fn.OthersRollUp.defaults = {
	duration: 1000
  };
  var options = $.extend($.fn.OthersRollUp.defaults, options);
  var selector = this;
  return this.each(function() {
  options.oriH = $(this).height();
  options.opac = $(this).css("opacity");
	$(this).hover(
	
	function(){
	$(selector).not(this).stop(true,false)
	.animate({height: "1px"}, options.duration)
	.fadeTo(1,0);
	}
	,
	function(){
	$(selector).not(this).stop(true,false).fadeTo(1,options.opac)
	.animate({height: options.oriH}, options.duration);
	});
	
  }); 
 };
 
 $.fn.OthersRollDown= function(options) {
  $.fn.OthersRollDown.defaults = {
	duration: 1000
  };
  var options = $.extend($.fn.OthersRollDown.defaults, options);
  var selector = this;
  return this.each(function() {
  options.oriH = $(this).height();
  options.opac = $(this).css("opacity");
	$(this).hover(
	
	function(){
	$(selector).not(this).stop(true,false)
	.animate({height: "1px", marginTop: options.oriH+"px"}, options.duration).fadeTo(1,0);

	}
	,
	function(){
	$(selector).not(this).stop(true,false).fadeTo(1,options.opac)
	.animate({height: options.oriH, marginTop: "0px"}, options.duration);
	});
	
  }); 
 };
 
 
 $.fn.OthersVibrate= function(options) {
  $.fn.OthersVibrate.defaults = {
	interval: 30, 
	duration: 1000,
	shake: 3
  };
  var options = $.extend($.fn.OthersVibrate.defaults, options);
  var selector = this;
  var oriLeft = 0;
  var oriTop = 0;
  return this.each(function() {
	oriTop = $(this).css("Top");
	oriLeft = $(this).css("Left");
	$(this).hover(
	
	function(){
	var obj = this;
	var vibrate = function(){
	$(selector).not(obj).stop(true,false)
	.css({position: 'relative', 
	left: Math.round(Math.random() * options.shake) - ((options.shake + 1) / 2) +'px', 
	top: Math.round(Math.random() * options.shake) - ((options.shake + 1) / 2) +'px'});
	}
	
	var vibrateIndex = setInterval(vibrate, options.interval);
	var stopVibration = function() {
	clearInterval(vibrateIndex);
	$(selector).stop(true,false)
		.css({position: 'static', left: '0px', top: '0px'});
	};
    setTimeout(stopVibration, options.duration);

	}
	
	,
	function(){

	});
	
  }); 
 };
 $.myPlugin = {
	slide:function(options){
	jQuery.myPlugin.slide.defaults = {
		navigation_id:"#sliding-navigation",
		pad_out:25,
		pad_in:15,
		time:150,
		multiplier:0.8	
	};
	var options = $.extend(jQuery.myPlugin.slide.defaults,options);
	var list_elements = options.navigation_id + " li.sliding-element";
	var link_elements = list_elements + " a";
	
	var timer = 0;
	
	$(list_elements).each(function(i)
	{
		
		// margin left = - ([width of element] + [total vertical padding of element])
		$(this).css("margin-left","-180px");
		// updates timer
		timer = (timer*options.multiplier + options.time);
		$(this).animate({ marginLeft: "0" }, timer);
		$(this).animate({ marginLeft: "30px" }, timer);
		$(this).animate({ marginLeft: "0" }, timer);
	});

	// creates the hover-slide effect for all link elements 		
	$(link_elements).each(function(i)
	{
		$(this).hover(
		function()
		{
			$(this).animate({ paddingLeft: options.pad_out }, 150);
		},		
		function()
		{
			$(this).animate({ paddingLeft: options.pad_in }, 150);
		});
	});
	}
};
 


})(jQuery);