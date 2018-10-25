<template>
    <div class="tabs">
        <ul>
            <router-link to="/index" tag="li">
                <div>
                    <i class="icon iconfont icon-icon--"></i>
                </div>
                <div>主页</div>
            </router-link>
            <router-link to="/xiaoxi" tag="li">
                <div>
                    <i class="icon iconfont icon-message"></i>
                </div>
                <div>消息</div>
            </router-link>
            <router-link to="/cart" tag="li">
                <div>
                    <i class="icon iconfont icon-qicheqianlian-"></i>
                </div>
                <div>购物车</div>
            </router-link>
            <router-link to="/wode" tag="li">
                <div>
                    <i class="icon iconfont icon-geren"></i>
                </div>
                <div>我的</div>
            </router-link>
        </ul>
    </div>
</template>
<script >
   export default{
        data(){
            return {}
        },
        methods:{}

    }
</script>
<style lang="less" type="text/less">
    .tabs {
        position: fixed;
        bottom: 0;
        left: 0;
        background-color: #fff;
        box-shadow: 0 2px 4px #000;
        width: 100%;
    & > ul, & > ul > li {
                    margin: 0;
                    padding: 0;
                }
    ul {
        display: table;
        width: 100%;
    & > li {
            text-align: center;
            font-size: 16px;
            display: table-cell;
            padding: 8px 12px;
            cursor: pointer;
    &.router-link-active{
         color: #D0021B;
     }
    & > div {
            font-size: 14px;
    & > i {
            font-size: 30px;
        }
    }
    }
    }
    }
</style>
