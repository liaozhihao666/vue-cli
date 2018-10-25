<template>
    <div class="cm-container">
        <h1>发表评论</h1>
        <hr>
        <textarea placeholder="输入" maxlength="120" v-model="msg"></textarea>
        <mt-button type="danger" size="large" @click="postComment">提交</mt-button>
        <!--=评论列表-->
        <div class="cmt-list">
          <div class="cmt-item" v-for="(i,k) in list" :key="k">
            <div class="cmt-title">
              第{{k+1}}楼&nbsp;&nbsp;用户:{{i.use_name}} &nbsp;
              发表时间:{{i.add_time | datetimeFilter}}
            </div>
            <div class="cmt-body">
              {{i.content}}
            </div>
          </div>
        </div>
        <mt-button type="danger" size="large" @click="getMore">加载更多</mt-button>
    </div>
</template>

<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return {
              msg:"",
              pno:1,
              list:[]
            }
        },
        created() {
            this.getComment();
        },
        methods:{
          getComment(){
            var nid=this.nid;
            var pno=this.pno;
            var url=`commentlist/list?nid=${nid}&pno=${pno}`;
            this.$http.get(url).then(result=>{
              console.log(result);
              var obj=result.body;
              if(obj.code==1){
                this.list=this.list.concat(obj.msg);
              }else{
                Toast("网络故障请检查")
              }
            })
          },
          postComment(){
            //console.log(123);
            var m=this.msg.trim();
            if(m.length<1){
              Toast("必须大于1");
              return;
            }
            var nid=this.nid;
            var url=`commentlist/postcomment?nid=${nid}&use_name=wp&content=${m}`;
            //console.log(url);
            this.$http.get(url).then(result=>{
              var obj=result.body;
              if(obj.code==1){
                Toast(obj.msg);
                this.msg="";
              }
            })
          },
          getMore(){
            this.pno++;
            this.getComment();
          }
        },
        props:["nid"]
    }
</script>

<style>
  .cm-container h1{
    font-size: 16px;
  }
  .cm-container textarea{
    font-size:14px;
    height: 85px;
    margin:0;
  }
  .cm-container .cmt-list{
    margin:5px 0;
  }
  .cm-container .cmt-list .cmt-item{
    font-size:12px;
  }
  .cm-container .cmt-list .cmt-item .cmt-title{
    line-height: 30px;
    background-color: aliceblue;
  }
  .cm-container .cmt-list .cmt-item .cmt-body{
    line-height: 30px;
    background-color: aliceblue;
    margin: 2px 0;
    text-indent: 2em;
  }
</style>





