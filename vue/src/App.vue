<template>
  <div>
	  <mt-header style="background-color: red"title="">
		  <router-link to="/index" slot="left">
			  <mt-button icon="back" @click="$router.back(-1)">返回</mt-button>
		  </router-link>
		  <mt-button icon="more" slot="right"></mt-button>
	  </mt-header>
			 <router-view></router-view>
  </div>
  </div>
</template>
 <script>
     export default {
         data(){
         return {}
     }

     }

 </script>
<style>



</style>
