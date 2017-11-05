window.onload=function(){
	
//导航栏首页的href默认修改
$(".nav_U li").eq(0).children("a").attr("href","/");
$(".nav_U li").eq(6).children("a").attr("href","/bbs");
// $(".nav_U li").eq(0).addClass("act_blu");
// $(".nav_U li").click(function(){
// 	$(this).addClass("act_blu").siblings(this).removeClass("act_blu")
// })

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

//注册登录弹出框
$(".log_Z").hover(
	function(){
		$(this).children(".login").css({"backgroundColor":"#fff"});
		$(this).children(".log").stop().slideDown(300);
	},function(){
		$(this).children(".login").css({"backgroundColor":""});
		$(this).children(".log").stop().slideUp(300);
	})

//导航栏子菜单弹出
// $(".nav_U li").hover(
// 	function(){
// 		$(this).children(".nav_U-no").stop().slideDown(300);
// 	},
// 	function(){
// 		$(this).children(".nav_U-no").stop().slideUp(300);
// 	}
// );

//右侧排行榜切换
$(function(){
	$(".pai_muLeft").eq(0).show();
	$(".paimu_mu").eq(0).show();
	$(".pai_ul li").hover(
		function(){
			$(this).addClass("act").siblings(".pai_ul li").removeClass("act");
            $(".pai_muLeft").eq($(this).index()).show().siblings(".pai_muLeft").hide();
            $(".paimu_mu").eq($(this).index()).show().siblings(".pai_muLeft").hide();  
		},function(){
			//不用写
		} 
	)
});

//点击帖子弹出子菜单
$(".stick").click(function(){
	$(this).children(".stick1 ").show();
	$(".stick1").mouseover(function(){
		$(this).show()
	})
});
$(".stick").mouseout(function(){
	$(this).children(".stick1 ").hide()
})
//子菜单变色
$(".stick1 li a").hover(
	function(){
		$(this).addClass("focus_act")
	},function(){
		$(this).removeClass("focus_act")
});
//子菜单的选择
$(".stick1 li").click(function(){
	var t=$(this).text();
	$(".scbar").text(t);
	
})



//大轮播图
$(function(){
	var uli=$(".ulist").children();
	var oli=$(".olist").children();
	var index=0;
	var str=0;
	var len=uli.length;

	//自动轮播autoPlay()
	$(uli).eq(index).fadeIn(500);
	function autoPlay(){
		$(oli).removeClass("acc");
		if(index>=0 & index<len-1){
			$(uli).eq(index).fadeOut(1000);
			index++;
			$(uli).eq(index).fadeIn(1000);
			$(oli).eq(index).addClass("acc");
		}else{
			$(uli).eq(index).fadeOut(1000);
			index=0;
			$(uli).eq(index).fadeIn(1000);
			$(oli).eq(index).addClass("acc");
		}
		str=index;
	};
	var time=setInterval(autoPlay,3000);

	//悬浮小圆点
	$(oli).mouseover(function(){
		var num=$(this).index();
		$(oli).removeClass('acc');
		$(this).addClass('acc');
		$(uli).fadeOut(1500);
		$(uli).eq(num).fadeIn(1000);
		index=num;
	});

	//定时器的开始与结束
	$(".lunbo").hover(
		function(){
			clearInterval(time);
		},function(){
			time=setInterval(autoPlay,3000);
		});

	//左边按钮的点击事件
	$(".left").click(function(){
		str--;
		if(str==-1){
			str=len-1;
		}
		$(uli).eq(str).fadeIn(1000).siblings().fadeOut(1000);
		$(oli).eq(str).addClass("acc").siblings().removeClass("acc");
		index=str;
	});

	//右边按钮的点击事件
	$(".right").click(function(){
		index=str;
		autoPlay();
	})
});

//小轮播图
$(function(){
	//小圆点初始化
	var len=$(".Sm_ulist li").length;
	for(var i=1;i<=len;i++){
		var li="<li>"+i+"</li>"
		$(".Sm_olist").append(li);
	};

	var uli=$(".Sm_ulist").children();
	var oli=$(".Sm_olist").children();
	$(oli).eq(0).addClass("acc");
	$(uli).eq(0).fadeIn(500);
	var time=setInterval(move,3000);
	var n=0;

	//自动轮播move()
	function move(){
		n++;
		if(n==len){
			n=0
		}
		$(uli).eq(n).fadeIn(1000).siblings().fadeOut(1000);
		$(oli).eq(n).addClass("acc").siblings().removeClass("acc");
	}

	//悬浮小圆点
	 $(oli).mouseover(function(){
	 	$(this).addClass("acc").siblings().removeClass("acc");
	 	var index=$(this).index();
	 	$(uli).eq(index).fadeIn(1000).siblings().fadeOut(1000);
	 	n=index;
	 })

	 //定时器的开始与结束
	 $(".lunbo_Sm").hover(
	 	function(){
	 		clearInterval(time)
	 	},function(){
	 		time=setInterval(move,3000)
	 	})
})
	
//点击关闭微信小广告
$(function(){
	$(".close").click(function(){
		$(this).parent().fadeOut(300)
	})
})

//点击回到顶部
$(function(){
	$(window).scroll(function(){
           var h1=$(document).scrollTop();
            if(h1>600){
              $(".ding").css("opacity","1");
            }else{
                $(".ding").css("opacity","0");
            }
        })
       $(".ding").click(function(){
           $("body,html").animate({
               scrollTop:0
           },500)
       })
})










}