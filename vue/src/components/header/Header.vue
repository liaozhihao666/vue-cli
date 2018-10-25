<template>
    <div id="header">
        <div class="header">
            <div class="logo">
                <img width="64"height="64" src="../../assets/img/logo.jpg" alt=""/>
                <img width="30"height="18"class="pingpai" src="../../assets/pingpai.png" alt=""/>
                <span class="span1">粥品香坊(回香坊)</span>
                <p>蜂鸟专送/38分钟送达</p>
                <div class="div1">
                    <img width="12"height="12"src="../../assets/jian.png" alt=""/>
                    <span class="span2">在线支付满25减8</span>
                </div>
            </div>
            <div class="guanggao">
                <img width="22"height="12"src="../../assets/guanggao.png" alt=""/>
                <span>粥品香坊其烹饪粥料的秘方源于中国千年古法，在融和现代制作工艺，由世界烹饪大师屈浩先生领衔研发。坚守纯天然、0添加的良心品质深得消费者青睐，发展至今成为粥类的引领品牌。是2008年奥运会和2013年园博会指定餐饮服务商。</span>
                <i class="sanjiao"></i>
            </div>
            <ul class="daohang">
                <router-link to="/index/shangping" tag="li">商品</router-link>
                <router-link to="/pingjia" tag="li">评价</router-link>
                <router-link to="/shangjia" tag="li">商家</router-link>
            </ul>
        </div>
    </div>
</template>
<script>
    export  default {
        data(){
        return{

        }
    },
    methods:{

    }
    }
</script>
<style>
    .header{
        position:relative;
        background-color: rgba(7,17,25,.5);
    }
    .logo{
        position:relative;
        padding:20px 20px;
        height:100px;
    }
    .pingpai{
        position:relative;
        top:-44px;
        left:20px;
    }
    .logo .span1{
        position:relative;
        top:-47px;
        left:25px;
        color:#fff;
        font-weight: 500;
    }
    .logo p{
        position:relative;
        top:-41px;
        left:85px;
        color:#fff;
        font-weight: 500;
    }

    .div1{
        position:relative;
        top:-50px;
        left:85px;
        color:#fff;
        font-weight: 500;
    }
    .guanggao{
        height:20px;
        background-color: rgba(7,17,27,.2);
        overflow: hidden;
    }
    .guanggao img{
        position: relative;
        left:10px;
        top:-2px;
    }
    .guanggao span{
        display: block;
        width:300px;
        height:20px;
        position:relative;
        top:-21px;
        left:37px;
        text-overflow: clip;
        font-size: 8px;
        color:#fff;
        white-space: normal;
        text-overflow: ellipsis;

    }
    .sanjiao{
        position: absolute;
        top:105px;
        left:350px;
        display: block;
        border-right:2px solid #fff;
        border-top:2px solid  #fff;
        width:10px;
        height:10px;
        transform: rotate(45deg);
    }
    .daohang{
        list-style: none;
        width:100%;
        background-color: #FFFFFF;
        color:black;
        height:40px;
        padding-left: 0px;


    }
    .daohang li{
        float: left;
        width: 33.3%;
        height:40px;
        line-height: 40px;
        text-align: center;

    }
    .daohang li.router-link-active{
        color: red;
    }

    .red{
        color: red;
    }
</style>