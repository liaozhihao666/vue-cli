const express = require("express");
const routerImage = require("./router/imagelist");
const routerNews = require("./router/newslist");
const routerComment=require("./router/commentlist");
const routerGoods=require("./router/goodslist")
var app = express();
const cors=require("cors");
app.use(cors({
orign:['http://127.0.0.1:8080',
'http://localhost:8000'
],
	credentials:true
}));
app.listen(3000)
app.use(express.static(__dirname+"/public"));
app.use("/imagelist",routerImage);
app.use("/newslist",routerNews);
app.use("/commentlist",routerComment);
app.use("/goodslist",routerGoods);

