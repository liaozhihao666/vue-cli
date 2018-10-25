<template>
    <div class="wode">
        <div class="user">
            <img src="../../img/avatar.png" alt="">
        </div>
        <div class="divider"></div>
        <div class="geren">
            <a href="">个人资料 </a>
            <div class="border"></div>
            <a href="">我的优惠券 <span class="arrow"></span></a>
            <div class="divider"></div>
            <a href="">常见问题 <span class="arrow"></span></a>
            <div class="border"></div>
            <a href="">使用条款 <span class="arrow"></span></a>
            <div class="border"></div>
            <a href="">设置 <span class="arrow"></span></a>
        </div>
    </div>
</template>
<script>

    export default{
        data(){
        return {}
    },

    methods:{
    }

    }
</script>
<style>
    .user{
        height:200px;
        display: flex;
        justify-content: center;
        align-items: center;
        background: #f60;
    }
    .user img{
        width:100px;
        height:100px;
        border:5px solid rgba(0,0,0,.3);
        border-radius:50%;
    }
    .divider{

        height:10px;
        background: #f1f1f1;
        box-shadow: 0 5px 5px rgba(0,0,0,.1)inset;
    }
    .border{
        height:3px;
        background: #f1f1f1;
    }

    .geren{
        position:relative;
        font-size: 16px;
        background:#fff;

    }
    .geren a{
        display: block;
        padding: 10px 20px;
        color:black;
    }
    .arrow{
        position:absolute;
        right:10px;

    }
    .arrow::after{
        display: inline-block;
        content:"";
        width:7.5px;
        height:7.5px;
        border-top:3px solid #ccc;
        border-right:3px solid #ccc;
        transform:rotate(45deg);
    }

</style>