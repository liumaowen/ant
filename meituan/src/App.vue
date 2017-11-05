<template>
<div id="app">
  <router-view/>
  <div class="foot">
    <ul>
      <li @click="fn1(index)" v-for="(item,index) in arrSrc">
        <router-link :to="item.router" :class="[index==num?classactive:'']">
          <img :src="[index==num?item.src1:item.src]" alt="">{{item.text}}
        </router-link>
      </li>
    </ul>
  </div>
</div>
</template>

<script>
export default {
  name: 'app',
  data () {
    return {
      arrSrc:[
        {router:"/",src:"../static/img/shouye.png",text:"首页",src1:"../static/img/shouye2.png"},
        {router:"/",src:"../static/img/fujin.png",text:"附近",src1:"../static/img/fujin.png"},
        {router:"/",src:"../static/img/guangyiguang.png",text:"逛一逛",src1:"../static/img/guangyiguang.png"},
        {router:"/",src:"../static/img/dingdan.png",text:"订单",src1:"../static/img/dingdan.png"},
        {router:"/my",src:"../static/img/wode.png",text:"我的",src1:"../static/img/wode2.png"}
      ],
      classactive:'active',
      num:0,
    }
  },
  methods:{
    fn1:function(n){
      this.num=n
    }
  }
}
</script>

<style>
#app{
  font-family:'Avenir',Helvetica,Arial,sans-serif;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  color:#2c3e50;
}
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
.foot{
  position:fixed;
  bottom:0;
  height:0.86rem;
  width: 6.4rem;
  background:#fff;
  border-top:1px solid #EFEFEF;
  padding:0.01rem 0.2rem;
}
.foot li{
  float:left;
  width: 0.6rem;
  height:0.86rem;
  color:#5D5959;
  text-align: center;
  margin-right:0.7rem;
}
.foot li:first-child{
  color:#06C0AB;
}
.foot li a{
  display:block;
  width: 0.6rem;
  height:0.86rem;
  color:#5D5959;
}
.foot li a.active{
  color:#00C4A8;
}
.foot li:last-child{
  margin-right:0;
}
.foot li img{
  width: 0.5rem;
  height: 0.55rem;
  /*vertical-align: top;*/
}
</style>
