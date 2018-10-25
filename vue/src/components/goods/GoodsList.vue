<template>
    <div class="goodslist">
         <div class="goodsitem" v-for="i in list" :key="i.lid" @click="goDetail(i.lid)">
            <img :src="i.img_url" alt="1">
            <h1 class="title">{{i.title}}</h1>
            <div class="info">
                <div class="price">
                    <span class="nowPrice">{{i.price_new}}</span>
                    <span class="oldPrice">{{i.price_old}}</span>
                </div>
                <div class="sell">
                    <span>{{i.lname}}</span>
                    <span>{{i.stock}}</span>
                </div>
            </div>
        </div>
        <mt-button type="danger" size="large" @click="getMore">更多</mt-button>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                list:[],
                pno:1
            }
        },
        created() {
            this.getGoodsList();
        },
        methods:{
            /*获取商品的详细信息*/
            goDetail(lid){
                this.$router.push({name:"goodsinfo",params:{lid}});
            },
            getGoodsList(){
                var pno=this.pno;
                var url=`goodslist/list?pno=${pno}`;
                this.$http.get(url).then(result=>{
                    var obj=result.body;
                    if(obj.code==1){
                        this.list=this.list.concat(obj.msg);
                        //console.log(this.list);
                    }else{
                        Toast("网络故障请检查");
                    }
                })
            },
            getMore(){
                this.pno++;
                this.getGoodsList();
            }
        }
    }
</script>

<style>
    *{
        padding: 0;
        margin: 0;
    }
    /*商品列表样式*/
    .goodslist{
        padding:7px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .goodslist .goodsitem{
        width:49%;
        border:1px solid #ccc;
        box-shadow: 0 0 8px #ccc;
        margin:4px 0;
        padding:2px;
        display: flex;
        flex-direction:column;
        justify-content: space-between;
        min-height: 293px;
    }
    .goodslist .goodsitem img{
        width: 100%;
    }
    .goodslist .goodsitem .title{
        font-size:16px;
    }
    .goodslist .goodsitem .info{
        background-color: #ede;
    }
    .goodslist .goodsitem .info .nowPrice{
        color:red;
        font-size: 16px;
    }
    .goodslist .goodsitem .info .oldPrice{
        color:gray;
        font-size: 14px;
        text-decoration: line-through;
        padding-left: 20px;
    }
    .goodslist .goodsitem .info .sell{
        display: flex;
        justify-content: space-between;
    }
</style>

