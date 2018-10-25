<template>
    <div id="pingjia">
        <Header></Header>
        <div class="pingjia">
            <div class="pingfeng-left">
                <h3>3.9</h3>
                <h4>综合评分</h4>
                <h5>高于周边商家69.2%</h5>
            </div>
            <div class="pingfeng-right">
                <h4>服务态度
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_off@2x.png" alt=""/>
                </h4>
                <h4>服务品质
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_on@2x.png" alt=""/>
                    <img src="../../assets/img/star24_off@2x.png" alt=""/>
                </h4>
                <h4>送达时间
                    <span style="color: darkgray">44分钟</span>
                </h4>
            </div>
        </div>
        <div class="neirong">
           <div class="neirong1">
               <button style="background-color:blue;color: #fff">全部57</button>
               <button style="background-color: #0072bc;color: #fff">满意47</button>
               <button >不满意1</button>
           </div>
            <div class="neirong2">
               <span><i v-bind:class="{green:index}" v-on:click="addclass()" class="iconfont icon-ok">   </i>只看有评论的内容</span>
            </div>
        </div>


    </div>
</template>
<script>
    import Header from '../../components/header/Header.vue'
    export  default {
        data(){
        return{
           index:false
        }
    },
    methods:{
    addclass(){
           this.index=!this.index;
        }
    },
    components:{
        Header
    }
    }
</script>
<style>
    .pingjia{
        background-color: #F9F9F9;
        height:140px;
        width:100%;
        position: absolute;
    }
.pingfeng-left{
    text-align: center;
    position: absolute;
    top:20px;
    left:20px;
    background-color: #F9F9F9;
    padding-right: 5px;
    border-right: 2px solid #EFEFF0;

}
    .pingfeng-left h3{
      color: #FF9900;
        padding-bottom: 5px;

    }
    .pingfeng-left h4{
        padding-bottom: 8px;
    }
.pingfeng-right{
    position: absolute;
    top:18px;
    left:170px;
    width:180px;
    background-color: #F9F9F9;
}
    .pingfeng-right h4{
        height:25px;
        line-height: 25px;
    }
    .neirong{
        position: absolute;
        top:201px;
        width:100%;
        height:490px;
        background-color:#F9F9F9 ;
    }
    .neirong1{
        position: relative;
        top:20px;
        width:100%;
        height:60px;
        border-bottom:2px solid #EFEFF0 ;
    }
    .neirong1 button{
        margin-left: 20px;
    }
    .neirong2{
        position:relative;
        top:20px;
        padding-left: 30px;
        font-size: 13px;
        color:grey;
        box-shadow: 0 2px 2px  ;
    }
    .neirong2 i{
       font-size: 22px;
        position: relative;
        top:3px;
    }
    .green{
      color:green;
    }
</style>