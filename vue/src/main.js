import Vue from 'vue'
import App from './App.vue'
import router from './router'
import VueResource from 'vue-resource'
Vue.use(VueResource);
Vue.http.options.root = "http://127.0.0.1:3000/";
Vue.filter("datetimeFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  m<10&&(m="0"+m);
  var d=date.getDate();
  d<10&&(d="0"+d);
  var h=date.getHours();
  h>12&&(h-=12);
  h<10&&(h="0"+h);
  var M=date.getMinutes()
  M<10&&(M="0"+M);
  return `${y}-${m}-${d} ${h}:${M}`;
});
import './assets/font_nwvpm0mukxo/iconfont.css'
import MintUI from "mint-ui"
Vue.use(MintUI)
import "./lib/mui/css/mui.css"
import "./lib/mui/css/icons-extra.css"
import "mint-ui/lib/style.css"
Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
