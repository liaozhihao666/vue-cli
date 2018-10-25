<template>
    <div class="goodsinfo">
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                        <swiper-box :list="list"></swiper-box>
                </div>
            </div>
		</div>
        <div class="mui-card">
				<div class="mui-card-header">{{goodslist.title}}</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<p class="price">
                           市场价 <del>{{goodslist.price_old}}</del>
                           销售价<span class="now_price">
                               {{goodslist.price_new}}
                           </span>
                        </p>
                        <p>
                            购买数量
                        </p>
                        <div class="mui-numbox" id="cartcount">
                            <button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
                            <input class="mui-input-numbox" type="number" value="1" />
                            <button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
                        </div>
                        <p>
                            <mt-button type="primary" size="small">立即购买</mt-button>
                            <mt-button type="danger" size="small">加入购物车</mt-button>
                        </p>
					</div>
				</div>
				<div class="mui-card-footer">页脚</div>
			</div>
        <div class="mui-card">
				<div class="mui-card-header">页眉</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
                        参数区域
					</div>
				</div>
				<div class="mui-card-footer">页脚</div>
		</div>
    </div>
</template>

<script>
    import swiper from "../subcomponents/swiper.vue";//引入
    export default{
        data(){
            return {
                lid:this.$route.params.lid,
                list:[],
                goodslist:{}
            }
        },
        created(){
            //this.count();
            this.getImageList();
            this.getGoodsInfo();
        },
        methods:{
            getImageList(){
                this.$http.get("imagelist/list").then(result=>{
                    var obj = result.body;
                    if(obj.code == 1){ 
                        this.list = obj.msg;
                    }else{  
                        Toast("数据加载失败"); 
                    }
                }) 
            },
            getGoodsInfo(){
                var lid=this.lid;
                var url=`goodslist/find?lid=${lid}`;
                this.$http.get(url).then(result=>{
                    var obj=result.body;
                    if(obj.code==1){
                        this.goodslist=obj.msg[0];
                    }else{
                        Toast("数据加载失败");
                    }
                })
            }
        },
        //注册子组件
        components:{
            "swiper-box":swiper
        }
    }
</script>
<style>
 .goodsinfo .mui-card-content-inner .mint-swipe{
   height:200px;
   background:#fff;
 }
 .goodsinfo .mui-card-content-inner .mint-swipe img{
   width:100%;
   height:100%;
 }
 .goodsinfo .now_price{
     color:red;
     font-size: 16px;
     font-weight: bold;
 }
</style>
