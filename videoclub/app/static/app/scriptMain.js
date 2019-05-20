$(document).ready(function(){
  $("#menuUser").mouseenter(function(){
    $("#subMenuUser").show();
  });
  $("#menuUser").mouseleave( function(){
    $("#subMenuUser").hide();
  });

  $("#menuPeli").mouseenter(function(){
    $("#subMenuPeli").show();
  });
  $("#menuPeli").mouseleave( function(){
    $("#subMenuPeli").hide();
  });
});
