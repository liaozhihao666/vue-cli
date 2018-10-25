const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
var pno=req.query.pno;
var pageSize=req.query.pageSize;
if(!pno){
pno=1;
}
if(!pageSize){
   pageSize=4;
}
var sql="SELECT lid,title,price_old,price_new,lname,stock,img_url FROM t_product LIMIT ?,?";
var offset=parseInt((pno-1)*pageSize);
pool.query(sql,[offset,pageSize],(err,result)=>{
if(err)throw err;
res.send({code:1,msg:result})
})
})
router.get("/find",(req,res)=>{
var id=req.query.id;
var sql="SELECT lid,price_old,price_new,lname,stock,img_url FROM t_product WHERE lid=?";
pool.query(sql,[id],(err,result)=>{
if(err) throw err;
res.send({code:1,msg:result});
})
})
module.exports=router;