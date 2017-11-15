
//热门资讯那三个切换效果
$(function(){
	$(".pai_ul li").hover(
		function(){
			$(this).addClass("blu").siblings().removeClass("blu");
			$(".remen_muLeft").eq($(this).index()).addClass("disblo").siblings().removeClass("disblo")
		},function(){

		})
})

//绿茶红茶计时器
$(function(){
	var time=setInterval(dong, 2000);
		var i=0;
		function dong(){
			if(i==5){
				i=0;
			}
			$('.ggbg').eq(i).children('a').css({"backgroundColor":"#fff"});
			$('.ggbg').eq(i-1).children('a').css({"backgroundColor":""});
			i++;
		};
		function hh(){
			$("table a").hover(function(){
				$(this).css("backgroundColor","#fff")
			},function(){
				$(this).css("backgroundColor","")
			})
		};
		hh();
		$("table").hover(
			function(){
				clearInterval(time);
				// hh();

			},function(){
				time=setInterval(dong, 2000);
			})
})


