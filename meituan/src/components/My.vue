<template>
<div class="my">
	<div class="header">
		<div class="icon_R">
			<a href="" v-for="item in arr"><img :src="item" alt=""></a>
		</div>
		<div class="tou">
			<img src="../../static/img/tou.jpg">
			<div class="tou_R">
				<p>heheccmm <img src="../../static/img/tou_1.jpg"></p>
				<a href="">个人信息 <img src="../../static/img/tou_2.jpg"></a>
			</div>
		</div>
	</div>
	<div class="ban">
		<a v-for="item in arrSrc" href=""><img :src="item.src">{{item.text}}</a>
	</div>
    <Balance></Balance>
	<div class="line">
	</div>
	<router-view/>
	<div class="money">
		<router-link :to="item.dd" class="aa" v-for="item in arrMoney" :key="item.id">
			<img :src="item.src" alt=""> {{item.text}}
			<span class="icon_big">></span>
			<span class="icon_small">{{item.data}}</span>
		</router-link>
	</div>
	<div class="line"></div>
    <div class="yewu">
    	<a class="aa" v-for="item in arrYewu" href="">
    		<img :src="item.src">
    		{{item.text}}
    		<span class="icon_big">></span>
			<span class="icon_small">{{item.data}}</span>
    	</a>
    </div>
    <div class="line"></div>
    

	<div class="kong"></div>
</div>
</template>

<script>
	import Balance from './Balance'
	export default{
		name:"My",
		data () {
			return {
               arr:["../../static/img/icon_t1.png","../../static/img/icon_t2.png","../../static/img/icon_t3.png"],
               arrSrc:[
                 {src:"../../static/img/ban1.png",text:"收藏"},
                 {src:"../../static/img/ban2.png",text:"评价"},
                 {src:"../../static/img/ban3.png",text:"清单"}
               ],
               arrMoney:[
                 {dd:"/my/ss",src:"../../static/img/money1.png",text:"我的钱包",data:""},
                 {dd:"/balance",src:"../../static/img/money2.png",text:"余额",data:"￥0.00"},
                 {dd:"",src:"../../static/img/money3.png",text:"抵用券",data:"1张待使用"},
                 {dd:"",src:"../../static/img/money4.png",text:"卡包",data:"0张"}
               ],
               arrYewu:[
                 {src:"../../static/img/ye1.png",text:"好友去哪",data:"跟好友一起玩"},
                 {src:"../../static/img/ye2.png",text:"会员中心",data:""},
                 {src:"../../static/img/ye3.png",text:"手机充值",data:"全网最低价"},
                 {src:"../../static/img/ye4.png",text:"发票助手",data:""},
                 {src:"../../static/img/ye5.png",text:"办信用卡",data:""},
                 {src:"../../static/img/ye6.png",text:"客服中心",data:""},
                 {src:"../../static/img/ye7.png",text:"我要合作",data:""},
                 {src:"../../static/img/ye8.png",text:"关于美团",data:""}
               ]
			}
			
		},
		components:{
				Balance
			}
	}
</script>
<style scoped>
	*{
  margin:0;
  padding:0;
  list-style: none;
  box-sizing:border-box;
}
body{
  font-size:0.18rem;
}
a{
  text-decoration:none;
}
.header{
	width: 6.4rem;
	height:2rem;
	background:#00C4A8;
}
.icon_R{
	float:right;
	margin-right:0.2rem;
	margin-top:0.15rem;
}
.icon_R a{
	width: 0.5rem;
	height: 0.5rem;
	display:block;
	float:left;
	margin-left:0.35rem;
}
.icon_R a img{
	width: 0.5rem;
	height: 0.5rem;
}
.tou{
	height:1.18rem;
	padding:0.85rem 0.35rem;

}
.tou>img{
	width: 1.1rem;
	height: 1.1rem;
	float:left;
}
.tou .tou_R{
	float:left;
	margin-left:0.2rem;
	line-height:0.45rem;
}
.tou_R a{
	color:#fff;
	font-size:0.20rem;
}
.tou_R a img{
	width: 0.16rem;
	height: 0.2rem;
}
.tou_R p{
	color:#fff;
	font-size:0.3rem;
}
.tou_R p img{
	width: 0.31rem;
	height:0.31rem;
}
.ban{
	height: 1.01rem;
	padding-left:0.85rem;
}
.ban a{
	display:block;
	height: 1.01rem;
	width: 0.5rem;
	float:left;
	text-align:center;
	color:#444;
	margin-right:1.55rem;
	padding-top:0.1rem;
}
.ban a:last-child{
	margin-right:0;
}
.ban a img{
    width: 0.5rem;
    height: 0.5rem;
}
.line{
	height:0.24rem;
	background:#EFEFEF;
}
.money{
	height:3.14rem;
	padding-left:0.2rem;
}
.aa{
	display:block;
	width: 6.2rem;
	height: 0.785rem;
	border-bottom:1px solid #EFEFEF;
	line-height:0.785rem;
	font-size:0.26rem;
	color:#000;
}
.aa:last-child{
	border-bottom:0;
}
.aa img{
	width: 0.5rem;
	height: 0.4rem;
	vertical-align: middle;
}
.aa .icon_small{
	float:right;
	margin-right:0.1rem;
	color:#999999;
	font-size:0.22rem;
	text-align:right;
} 
.aa .icon_big{
	float:right;
	margin-right:0.18rem;
	color:#999999;
}
.yewu{
	height:6.28rem;
	width: 6.4rem;
	padding-left:0.2rem;
}
.yewu img{
	width: 0.5rem;
	height:0.5rem;
}


.kong{
	height:0.86rem;
}
</style>