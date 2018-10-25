<template>
    <div id="shangjia">
        <Header></Header>
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
        <div class="shangjia">
            <div class="shangjia-top">
                <h4>粥品香坊(大运村)</h4>
                <img src="../../assets/img/star24_on@2x.png" alt=""/>
                <img src="../../assets/img/star24_on@2x.png" alt=""/>
                <img src="../../assets/img/star24_on@2x.png" alt=""/>
                <img src="../../assets/img/star24_on@2x.png" alt=""/>
                <img src="../../assets/img/star24_off@2x.png" alt=""/><span style="font-size: 10px;">(24) &nbsp;&nbsp;月销90单</span>
            </div>
            <div class="shangjia-bottom">
              <ul>
                  <li>起送价 <p>20元</p></li>
                  <li>商家配送 <p>4元</p></li>
                  <li>平均配送时间 <p>39分钟</p></li>
              </ul>
            </div>
        </div>
        <div class="huodong">
            <div class="huodong1">
               公告与活动
            </div>
        </div>

    </div>
</template>
<script>
    import Header from '../../components/header/Header.vue'
    export  default {
        data(){
        return{

        }
    },
    components:{
        Header
    },
    methods:{

    }

    }
</script>
<style>
    .shangjia{
        background-color: #F9F9F9;
        height:150px;
        width:100%;
        position: absolute;
        top:200px;
    }
    .shangjia-top{
          width: 80%;
          height:80px;
        padding-left: 10px;
          border-bottom:2px solid #EFEFF0 ;
      }
    .shangjia-bottom{

        width: 80%;
    }
    .huodong{
        position: absolute;
        top:347px;
        width:100%;
        height:480px;
        background-color:#F9F9F9 ;
    }
    .huodong1{
        position: relative;
        padding-left: 10px;
        top:20px;
        width:80%;
        border-bottom:2px solid #EFEFF0 ;
        height:60px;
    }

   .shangjia-bottom ul{
        list-style: none;
    }
    .shangjia-bottom ul li{
        float: left;
        font-size: 10px;
        margin-right: 16px;
        margin-left: 13px;

    }


</style>