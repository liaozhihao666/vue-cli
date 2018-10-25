//router.js 加载所有组件并且指定访问路径
import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
//1.1:加载Home组件
import HomeContainer from "./components/tabbar/HomeContainer.vue"
//1.2:加载MemberContainer组件
import WodeContainer from "./components/tabbar/WodeContainer.vue";
//1.3加载ShopContainer组件
import ShopContainer from "./components/tabbar/ShopContainer.vue"
//1.4加载SearchContainer组件
import XiaoxiContainer from "./components/tabbar/XiaoxiContainer.vue"
//1.5加载NewsList.vue组件
import NewsList from "./components/news/NewsList.vue"
//1.6:加载NewsInfo.vue 组件
import NewsInfo from "./components/news/NewsInfo.vue"

import Shangping from "./components/shangping/Shangping.vue"

import GoodsList from "./components/goods/GoodsList.vue"

import GoodsInfo from "./components/goods/GoodsInfo.vue"
import Shangjia from './components/shangjia/Shangjia.vue'
import Pingjia from './components/pingjia/Pingjia.vue'

Vue.use(Router)
export default new Router({
  routes: [
      {path:"/",redirect:"/index"},
      {path:"/index",name:'HomeContainer',component: HomeContainer},
      {path:"/wode",name:'WodeContainer',component:WodeContainer},
      {path:"/cart",name:'ShopContainer',component:ShopContainer},
      {path:"/xiaoxi",name:'XiaoxiContainer',component:XiaoxiContainer},
      {path:"/index/newslist",component:NewsList},
      {path:"/index/newsinfo/:nid",component:NewsInfo},
      {path:"/index/shangping",component:Shangping},
      {path:'/pingjia',component:Pingjia},
      {path:'/shangjia',component:Shangjia},
      {path:"/index/goodslist",component:GoodsList},
      {path:"/index/goodsinfo/:lid",component:GoodsInfo,name:"goodsinfo"}
  ]
})
