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


  $("#btn").click(function(){
    var p1 = document.getElementsByName("username")[0].value;
    var p2 = document.getElementsByName("email")[0].value;
    var pass1 = document.getElementsByName("passwd")[0].value;
    var pass2 = document.getElementsByName("rPasswd")[0].value;

    var noValido = / /;
    var noEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;



    if(noValido.test(p1) || (p1 == '')){
        $("#inptNUser").addClass("has-error");
        $("#username").popover('show');

    }
    else{
      if($("#inptNUser").hasClass("has-error")){
        $("#inptNUser").removeClass("has-error");
      }
      $("#inptNUser").addClass("has-success");
      $("#username").popover('hide');
    }

    if(!(noEmail.test(p2)) || noValido.test(p2)){
        $("#inptEmail").addClass("has-error");
        $("#email").popover('show');
    }
    else{
      if($("#inptEmail").hasClass("has-error")){
        $("#inptEmail").removeClass("has-error");
      }
      $("#inptEmail").addClass("has-success");
      $("#email").popover('hide');
    }
    if(pass1 != pass2 || (pass1 == '')){
      $("#inptRPwd").addClass("has-error");
      $("#rPasswd").popover('show');
    }
    else{
      if($("#inptRPwd").hasClass("has-error")){
        $("#inptRPwd").removeClass("has-error");
      }
      $("#inptPwd").addClass("has-success");
      $("#inptRPwd").addClass("has-success");
      $("#rPasswd").popover('hide');
    }


  });

});
