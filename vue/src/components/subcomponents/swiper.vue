
<template>
    <mt-swipe :auto="4000">
        <mt-swipe-item v-for="i in list" :key="i.id">
            <img :src="i.img_url" />
        </mt-swipe-item>
    </mt-swipe>
</template>
<script>
    export default{
        data(){
            return {}
        },
        methods:{},
        props:["list"]  //父元素传递过来的数据
    }
</script>

<style>
.mint-swipe{
   height:200px;
   background:#fff;
 }
.mint-swipe img{
   width:100%;
   height:100%;
 }
</style>





