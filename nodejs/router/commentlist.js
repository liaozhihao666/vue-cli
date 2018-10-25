const express = require("express");
const pool = require("../pool");
var router = express.Router();
router.get("/list",(req,res)=>{
 var nid=req.query.nid;
 var pno=req.query.pno;
 if(!pno){
  pno=1;
 }
 var reg=/^[0-9]{1,}$/i;
 if(!reg.test(pno)){
 res.send({code:-1,msg:"页码格式有误"});
 return;
 }
 if(!reg.test(nid)){
 res.send({code:-2,msg:"新闻编号格式不正确"});
 return;
 }
 var sql="SELECT id,use_name,add_time,content,nid";
 sql+=" FROM t_comment WHERE nid=? LIMIT ?,?";
 var pageSize=3;
 var offset=parseInt((pno-1)*pageSize);
 nid=parseInt(nid);
 pool.query(sql,[nid,offset,pageSize],(err,result)=>{
 if(err)throw err;
 res.send({code:1,msg:result});
 })
});
router.get("/postcomment",(req,res)=>{
var username=req.query.username;
var content=req.query.content;
var nid=req.query.nid;
var sql="INSERT INTO t_comment(use_name,add_time,content,nid)VALUES(?,now(),?,?)";
pool.query(sql,[username,content,nid],(err,result)=>{
if(err)throw err;
res.send({code:1,msg:"发表成功"});
})
})

module.exports = router;