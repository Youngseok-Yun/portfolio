$(function(){  
    $(".navi li").mouseover(function(){
        $(".submenu").stop().slideDown(500);            
    }).mouseout(function(){
        $(".submenu").stop().slideUp(500);  
    });

    $(".imgslide a:gt(0)").hide();
    setInterval(function(){
        $(".imgslide a:first-child").fadeOut(1000)
                            .next("a").fadeIn(1000)
                            .end().appendTo(".imgslide");
    }, 3000);    

    $(".tabmenu>li>a").click(function(){
        $(this).parent().addClass("active").siblings().removeClass("active");     
      });

    $(".notice li:first").click(function(){
        $("#modal").addClass("active");
      });
      $(".closeBtn").click(function(){
          $("#modal").removeClass("active");
      });
});