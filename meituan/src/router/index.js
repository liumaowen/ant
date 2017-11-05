import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import My from '@/components/My'
import Wallet from '@/components/Wallet'
import Balance from '@/components/Balance'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Hello',
      component: HelloWorld
    },
    {
      path: '/my',
      name: 'My',
      component: My,
      children:[
        {path:'ss',
        name:"Wallet",
        component:Wallet}
      ]
      
    },
    {path:'/wallet',
    name:"Wallet",
    component:Wallet
    },
    {path:'/balance',
      name:"Balance",
      component:Balance
    }
  ]
})
