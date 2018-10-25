<template>
    <div class="newsinfo-container">
       <h1 class="title">{{newsinfo.title}}</h1>
       <p class="subtitle">
          <span>发表时间:{{newsinfo.add_time | datetimeFilter}}</span>
          <span>点击:{{newsinfo.click}}次</span>
       </p>
       <div class="container" v-html="newsinfo.content">
       </div>
       <comment :nid="this.nid"></comment>
    </div>
</template>
<script>
  //引入提示框
  import Toast from "mint-ui"
  //引入子组件
  import comment  from "../subcomponents/comment.vue"
  export default {
     data(){
       return {
         newsinfo:{},    //创建对象保存获取数据
         nid:this.$route.params.nid //新闻列表编号
       }
     },
     created(){
       //console.log(this.$route.params.id);
       //console.log(this);
       this.getnewsInfo();
     },
     methods:{
        //依据id获取新闻详细信息
        getnewsInfo(){
          this.$http.get("newslist/detail?nid="+this.nid).then(result=>{
            //保存返回数据
            if(result.body.code == 1){
                this.newsinfo = result.body.msg[0];
            }else{
               Toast("数据获取失败");              
            }
          })
        }
     },
     components:{             //NewsInfo.vue 注册子组件
      comment  //组件名称:组件对象
     }
  }
</script>
<style>
  /*左右边距距离边框太近，左右4px*/
  .newsinfo-container{
    padding:0 4px;
  }
  /*修改标题*/
  .newsinfo-container .title{
    font-size:16px;
    text-align:center;
    margin:15px 0;
    color:red;
  }
  /*修改子标题*/
  .newsinfo-container .subtitle{
    font-size:13px;
    color:#226aff;
    display:flex;
    justify-content:space-between;
  }
  .newsinfo-container .container img{
    width:100%;
  }
</style>