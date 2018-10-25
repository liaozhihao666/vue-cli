//newslist 新闻列表
//1:加载相应模块 express pool
const express = require("express");
const pool = require("../pool");
var router = express.Router();
router.get("/list",(req,res)=>{
  var sql = " SELECT nid,title,add_time,click,img_url";
     sql += " FROM news";
  pool.query(sql,(err,result)=>{
     if(err)throw err;
     res.send({code:1,msg:result});
  })   
});
router.get("/detail",(req,res)=>{
  var nid = req.query.nid;
  var sql =" SELECT nid,title,add_time,click";
     sql +=" ,img_url,content FROM news WHERE nid = ?"
  pool.query(sql,[nid],(err,result)=>{
     if(err)throw err;
	
     res.send({code:1,msg:result});
  });
})

module.exports = router;