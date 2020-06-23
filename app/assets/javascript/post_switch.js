$(function(){
  
  $(".posts_btn").click(function(){
    $(".posts").removeClass("hide");
    $(".favorite").addClass("hide");
  });

  $(".favorite_btn").click(function(){
    $(".posts").addClass("hide");
    $(".favorite").removeClass("hide");
  });

  
});