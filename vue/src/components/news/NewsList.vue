<template>
  <div>
    <ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media" v-for="item in newslist" :key="item.nid">
					<router-link :to="'/index/newsinfo/'+item.nid">
						<img class="mui-media-object mui-pull-left" :src="item.img_url">
						<div class="mui-media-body">
							<h1>{{item.title}}</h1>
							<p class='mui-ellipsis'>
							  <span>{{item.add_time | datetimeFilter}}</span>
								<span>点击:{{item.click}}次</span>
							</p>
						</div>
					</router-link>
				</li>
			</ul>

  </div>
</template>
<script>
  import {Toast} from "mint-ui"
  export default{
    data(){
      return {
				newslist:[]
			}
    },
		created(){
			this.getnewslist();
		},
    methods:{
			 //获取新闻列表
			 getnewslist(){
				this.$http.get("newslist/list").then(result=>{
					console.log(result);
					if(result.body.code == 1){
						this.newslist = result.body.msg;
					}else{
            Toast("获取数据失败");
					}
				}); 
			 }
    }
  }
</script>
<style>
 /*修改样式 新闻标题 新闻发表时间与点击次数*/
 .mui-table-view  h1{
	 font-size:14px;
 }
 .mui-table-view  .mui-ellipsis{
   font-size:12px;
	 color:#226aff;
	 display:flex;
	 justify-content:space-between;
 }
</style>