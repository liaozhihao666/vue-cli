const mysql = require("mysql");
var pool = mysql.createPool({
    host:"127.0.0.1", 
    user:"root",        
    password:"",       
    database:"vue", 
    port:3306,          
    connectionLimit:10 
});
//3:导出
module.exports = pool;