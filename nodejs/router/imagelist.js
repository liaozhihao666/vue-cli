const express = require("express");
const pool = require("../pool");
var router =  express.Router();
router.get("/list",(req,res)=>{
  var sql = "SELECT id,img_url,title FROM imagelist";
  pool.query(sql,(err,result)=>{

      if(err)throw err;
      console.log(result);
      res.send({code:1,msg:result});
  });
})

module.exports = router;