<template>
   <div id="zhuye">
     <mt-swipe @change="handleChange">
      <mt-swipe-item v-for="(item,k) in list" :key="k">
         <img :src="item.img_url" />
      </mt-swipe-item>
     </mt-swipe>
        <ul class="mui-table-view mui-grid-view mui-grid-9">
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                  <router-link to="/index/newslist">
                          <img style="border-radius:50%"src="../../img/touxiang.jpg" />
                          <div class="mui-media-body">新闻资讯</div>
                  </router-link>
                </li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                  <router-link to="/index/shangping">
		                    <img style="border-radius:50%"src="../../assets/img/logo.jpg" />
		                    <div class="mui-media-body">美食外卖</div>
                  </router-link>
                </li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                  <router-link to="/index/goodslist">
		                    <img style="border-radius:50%"src="../../img/touxiang1.jpg" />
		                    <div class="mui-media-body">时尚手机</div>
                  </router-link>
                </li>
		        </ul>
       <Tabs></Tabs>
    </div>

</template>
<script>
  //1:加载Toast组件
  import {Toast} from "mint-ui";
  import Tabs from  "../subcomponents/Tabs.vue";
  //2:创建vue实例
  export default { 
    data(){
      return {
        list:[]
      }
    },
    created(){
      this.getImageList();
    },
  components:{Tabs},
    methods:{
      getImageList(){
        this.$http.get("http://127.0.0.1:3000/imagelist/list").then(result=>{
          var obj = result.body;
          if(obj.code == 1){    //返回成功数据
          //将返回数据保存list
            this.list = obj.msg;
          }else{   //返回失败数据
             //测试   this.$toast("数据加载失败")
             Toast("数据加载失败"); //脚手架 
          }
        })
      }
    }
  }
</script>
<style>
 #zhuye .mint-swipe{
   height:200px;
   background:#fff;
 }
 #zhuye .mint-swipe img{
   width:100%;
   height:100%;
 }
 #zhuye .mui-grid-view.mui-grid-9{
     margin-top: 20px;
     background-color:#EFEFF4;

 }
 #zhuye .mui-grid-view.mui-grid-9 .mui-table-view-cell{
     border-radius: 50%;
     background-color:#EFEFF4;

 }
 #zhuye .mui-grid-view.mui-grid-9 img{
    width:60px;
    height:60px;
 }
</style>