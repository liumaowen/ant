<template>
<div class="zong">
  <div class="head">
    <div class="di">北京<span></span></div>
    <div class="head_C">
      <input type="text" v-model="data">
      <span></span>
    </div>
    <a href="" class="jia"></a>
  </div>
  <div class="nav">
    <div class="navZ" :style="[s1]">
       <a v-for="(item,index) in arrPic" href=""><img :src="item"></a>
    </div>
    <ul class="yuandian">
      <li v-for="(item,index) in arrPic.length" :class="[num==index?classactive:'']" ></li>
    </ul>
  </div>
  <div class="lei">
    <a v-for="item in arr" href=""><img :src="item" alt=""></a>
  </div>
  <div class="icon-list">
    <a href="" v-for="item in icon"><img :src="item.src" alt=""><br>{{item.title}}</a>
  </div>
  <div class="line"></div>
  <div class="banner">
    <a href="#" v-for="item in bannerA">
      <h3>{{item.h}}</h3>
      <p>{{item.p}}</p>
      <img :src="item.src">
    </a>
  </div>
  <div class="line"></div>
  <div class="jie"><a href=""><img :src="jieqian"></a></div>
  <div class="line"></div>
  <div class="waimai">
    <div class="top"><p>-猜你喜欢-</p></div>
    <div class="waimai_ban">
      <a href="" class="waimai_a">
        <img src="../../static/img/waimai1.png">
        <div class="waimai_R">
          <p class="waimai_R_1"><strong>奶茶嫁给粉</strong><span>6.0km</span></p>
          <p class="waimai_R_2">[8店通用]10元代金券1张，可叠加</p>
          <p class="waimai_R_3"><strong>￥8.5</strong><span>门市价:￥10</span><span>已售39580</span></p>
        </div>
      </a>
    </div> 
    <div class="waimai_ban">
      <a href="" class="waimai_a">
        <img src="../../static/img/waimai1.png">
        <div class="waimai_R">
          <p class="waimai_R_1"><strong>奶茶嫁给粉</strong><span>6.0km</span></p>
          <p class="waimai_R_2">[8店通用]10元代金券1张，可叠加</p>
          <p class="waimai_R_3"><strong>￥8.5</strong><span>门市价:￥10</span><span>已售39580</span></p>
        </div>
      </a>
    </div>
  </div>
  <div class="kongbai"></div>
</div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      data:"华瑞齿科",
      arrPic:["../../static/img/nav1.png","../../static/img/nav2.png","../../static/img/nav3.png"],
      num:0,
      classactive:'active',
      s1:{left:0},
      arr:["../../static/img/lei_1.png","../../static/img/lei_2.png","../../static/img/lei_3.png","../../static/img/lei_4.png","../../static/img/lei_5.png"],
      icon:[
        {src:"../../static/img/you.png",title:"周边游"},
        {src:"../../static/img/piao.png",title:"机票/火车票"},
        {src:"../../static/img/ktv.png",title:"KTV"},
        {src:"../../static/img/liren.png",title:"丽人/美发"},
        {src:"../../static/img/zuliao.png",title:"足疗按摩"},
        {src:"../../static/img/jingdian.png",title:"景点/门票"},
        {src:"../../static/img/lvxing.png",title:"美团旅行"},
        {src:"../../static/img/jiehun.png",title:"结婚/摄影"},
        {src:"../../static/img/muying.png",title:"母婴亲子"},
        {src:"../../static/img/quan.png",title:"全部分类"}
      ],
      jieqian:"../../static/img/jieqian.png",
      bannerA:[
        {h:"周二榜单",p:"5折好店",src:"../../static/img/banner1.png"},
        {h:"周二特价",p:"泰国跟团甩卖",src:"../../static/img/banner2.png"},
        {h:"限时福利",p:"抽100免单券",src:"../../static/img/banner3.png"},
        {h:"周二特惠",p:"演唱会3折",src:"../../static/img/banner4.png"},
        {h:"月卡免费",p:"新人7日免压",src:"../../static/img/banner5.png"},
        {h:"免费专区",p:"免费抢不停",src:"../../static/img/banner6.png"},
        {h:"10月必看",p:"抢备婚好物",src:"../../static/img/banner7.png"},
        {h:"贴秋膘",p:"暖心暖胃爱你",src:"../../static/img/banner8.png"}
      ],
    }
  },
  created(){
     this.play()
  },
  methods:{
     autoPlay(){
      if(this.num>=2){
        this.num=0
      }else{
        this.num++
      };
      this.s1.left=-6.4*this.num+"rem"
    },
    play(){
      setInterval(this.autoPlay,2000)
    },
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
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
.head{
  height: 0.85rem;
  padding-left:0.2rem;
  width: 6.4rem;
}
.head .di{
  font-size:0.28rem;
  color:#5A5A5A;
  margin-top:0.2rem;
  float:left;
}
.head .di span{
  display:inline-block;
  width: 0.3rem;
  height: 0.3rem;
  background:url(../../static/img/di_1.png) no-repeat 0rem 0.05rem;
  background-size:0.3rem 0.3rem;
}
.head_C{
  width: 4.28rem;
  height: 0.5rem;
  float:left;
  position:relative;
  margin-left:0.2rem;
  padding-top:0.15rem;
}
.head_C input{
  /*display:block;*/
  width: 4.28rem;
  height: 0.5rem;
  background:#EEEEEE;
  border-radius:0.25rem;
  border:0;
  font-size:0.22rem;
  color:#595959;
  padding-left:0.4rem;
  outline: medium;
}
.head_C span{
  width: 0.32rem;
  height: 0.32rem;
  background:url(../../static/img/search.png) no-repeat center;
  background-size:0.32rem;
  position:absolute;
  top:0.23rem;
  left:0.05rem;
}
.jia{
  display:block;
  width: 0.52rem;
  height: 0.7rem;
  background:url(../../static/img/jia.png) no-repeat 0rem 0.17rem;
  background-size:.52rem;
  float:left;
  margin-left:0.2rem;
}
.nav{
  width:6.4rem;
  height:1.7rem;
  position:relative;
  overflow:hidden;
}
.nav .navZ{
  width: 1000%;
  position:absolute;
  left:0;
  transition:all 1s;
}
.nav .navZ a{
  display:block;
  width: 6.4rem;
  height: 1.7rem;
  float:left;
}
.nav img{
  width: 6.4rem;
  height: 1.7rem;
  
}
.yuandian{
  width: 2.5rem;
  height: 0.2rem;
  position:absolute;
  bottom:0.1rem;
  left:42%;
}
.yuandian li{
  width: 0.2rem;
  height: 0.2rem;
  /*border:1px solid;*/
  background:grey;
  border-radius:0.1rem;
  float:left;
  margin-right:0.2rem;
}
.yuandian li.active{
  background:white;
  border:none;
}
.lei{
  height:1.77rem;
  padding-left:0.3rem;
  border-bottom:1px solid #EFEFEF;
  padding-top:0.21rem;
}
.lei a{
  display:block;
  width:1rem;
  height:1.35rem;
  float:left;
  margin-right:0.2rem;

}
.lei a:last-child{
  margin-right:0;
}
.lei a img{
  width:1rem;
  height:1.35rem;
}
.icon-list{
  height:2.45rem;
  width:6.4rem;
    padding: 0.3rem 0.25rem;
}
.icon-list a{
  display:block;
  width:1.15rem;
  height:1rem;
  float:left;
  font-size:0.2rem;
  color:#444;
  text-align:center;
  /*margin-right:0.35rem;*/
}
.icon-list a:last-child{
  margin-right:0;
}
.icon-list a img{
  width:0.45rem;
  height:.45rem;
  /*vertical-align:top;  */
}
.icon-list a:nth-child(2) img{
  width:0.77rem;
  height:.53rem;
}
.icon-list a:nth-child(7) img{
  width:0.74rem;
  height:0.49rem;
}
.line{
  height:0.16rem;
  background:#EFEFEF;
}
.jie{
  height: 1.62rem;
}
.jie img{
  width: 6.4rem;
  height:1.62rem;
}
.banner{
  height:4.48rem;
  width:6.4rem;
}
.banner a{
  display:block;
  width: 1.6rem;
  height:2.24rem;
  float:left;
  padding:0.2rem 0;
}
.banner a h3{
  font-size:0.25rem;
  color:#000;
  text-align:center;
}
.banner a p{
  font-size:0.22rem;
  color:#CCB25B;
  text-align:center;
}
.banner a img{
  width: 1.1rem;
  height:1.05rem;
  margin-left:0.25rem;
}
.waimai{
  width: 6.4rem;
  /*height:5rem;*/
}
.waimai .top{
  height:0.72rem;
  border-bottom:1px solid #EFEFEF;
  line-height:0.72rem;
}
.waimai .top p{
  text-align:center;
  font-size:0.25rem;
  color:#A19D9D;
}
.waimai_ban{
  height:2.14rem;
  border-bottom:1px solid #EFEFEF;
}
.waimai_ban .waimai_a{
  display:block;
  height:2.14rem;
  padding-left:0.18rem;
  padding-top:0.195rem;

}
.waimai_ban .waimai_a img{
  width: 1.75rem;
  height:1.75rem;
  float:left;
}
.waimai_R{
  float:left;
  height:1.75rem;
  width: 4.2rem;
  margin-left:0.18rem;
  line-height: 0.45rem;
}
.waimai_R_1,.waimai_R_2,.waimai_R_3{
  font-size:0.24rem;
  color:#A19D9D;
}
.waimai_a .waimai_R_1 strong{
  font-size:0.28rem;
  color:#000;
  font-weight: bold;
}
.waimai_a .waimai_R_1 span{
  font-size:0.2rem;
  margin-left:2.0rem;
}
.waimai_a .waimai_R_3 strong{
  font-size:0.35rem;
  font-weight: bold;
  color:#2AAF9E;
}

.waimai_a .waimai_R_3 span:last-child{
  font-size:0.26rem;
  margin-left:0.6rem;
}
.kongbai{
  height:0.8rem;
}
</style>
