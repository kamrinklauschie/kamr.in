//= require jquery

$(".media-option").click(function(){
   $(".media-option").removeClass("media-active");
   $(this).addClass("media-active");

});

$(".project-option").click(function(){
   $(".project-option").removeClass("project-active");
   $(this).addClass("project-active");

});
