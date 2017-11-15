//导航栏首页的href默认修改
$(".nav_U li").eq(0).children("a").attr("href","/");
$(".nav_U li").eq(6).children("a").attr("href","/bbs");
//导航栏固定
var h1=$(".HH_top").height();
var h2=$(".header").height();
var h=h1+h2;
$(window).scroll(function(){
    var w_height=$(document).scrollTop();
    if(w_height>h){
        $(".nav").css({
            "position":"fixed",
            "top":0,
            "z-index":200,
            "opacity":0.85
        })
    }else{
        $(".nav").css({
            "position":"static",
            
        })
    }
})
//轮播
$(function(){

    //´óÂÖ²¥
    var uli=$(".ulist>li");
    var oli=$(".olist>li");
    var index=0;
    var str=0;
    var len=uli.length;
    
    //×Ô¶¯ÂÖ²¥
    uli.eq(index).fadeIn(500);
    function autoPlay(){
       $(oli).removeClass("acc");
       if(index>=0 && index<len-1){
           $(uli).eq(index).fadeOut(1500);
           index++;
           $(uli).eq(index).fadeIn(1500);
           $(oli).eq(index).addClass("acc");
       }else{
           $(uli).eq(index).fadeOut(1500);
           index=0;
           $(uli).eq(index).fadeIn(1500);
           $(oli).eq(index).addClass("acc");
       }
       str=index;
    }
    var time=setInterval(autoPlay,3000);
    
    //Ðü¸¡Ð¡Ô²µã
    
    $(oli).mouseover(function(){
       var num=$(this).index();
       $(this).addClass("acc").siblings().removeClass("acc");
       $(uli).fadeOut(1500);
       $(uli).eq(num).fadeIn(1500);
       index=num;
    })
    
    $(".banner").mouseover(function(){
       clearInterval(time)
    })
    $(".banner").mouseout(function(){
       time =setInterval(autoPlay,3000);
    })


    // $(".big li").eq(0).children("a").attr("href","/admin");
    // $(".big>li").eq(6).children("a").attr("href","/admin/forum");


    $(".ban .not a").mouseover(function(){
        var index=$(this).index();
        $(this).css({
            "borderTop":"2px solid #1F90DE",
            "color":"#1F90DE"
        }).siblings().css({
            "borderTop":"none",
            "color":"black"
        })
        $(".ban .cont ul").eq(index).show();
        $(".ban .cont ul").eq(index).siblings().hide();
    })


})
