// $(document).ready(function(){

// 	alert("Ready set go")

// });


$(function(){
   setInterval(function(){
      $(".slideshow ul").animate({marginLeft:-500},500,function(){
         $(this).css({marginLeft:0}).find("li:last").after($(this).find("li:first"));
      })
   }, 2500);
});

