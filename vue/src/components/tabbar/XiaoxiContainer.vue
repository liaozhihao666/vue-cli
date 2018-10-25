<template>
    <div class="msg">
        <div class="card">
            <div class="card-title">潮流男装</div>
            <div class="fuzhuang"></div>
            <div class="card-title1">查看详情<span class="arrow"></span></div>
        </div>
        <div class="card">
            <div class="card-title">美味美食</div>
            <div class="meishi"></div>
            <div class="card-title1">查看详情<span class="arrow"></span></div>
        </div>
        <Tabs></Tabs>
    </div>
</template>
<script>
    import Tabs from "../subcomponents/Tabs.vue"
    export default{
        data(){
        return {}
    },
    methods:{},
    components:{Tabs}
    }
</script>
<style>
    .card{
        background-color:#fff;
        width:90%;
        border-radius:10px;
        margin:15px auto;
        height:330px;

    }
    .card-title{
        padding-top: 15px;
        margin-left: 15px;
        padding-bottom: 5px;
        width:90%;
        font-size: 20px;
        border-bottom: 1px solid #9fcdff;
        font-weight: bold;
    }
    .card-title1{
        position: relative;
        padding-top: 15px;
        margin-left: 15px;
        padding-bottom: 5px;
        width:90%;
        font-size: 16px;
        border-top: 1px solid #9fcdff;
    }
    .meishi{
        width:90%;
        margin: 10px auto;
        height:220px;
        background: url("../../img/meishi1.jpg")no-repeat;
        background-size: cover;

    }
    .fuzhuang{
        width:90%;
        margin: 10px auto;
        height:220px;
        background: url("../../img/fuzhuang1.jpg")no-repeat;
        background-size: cover;

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