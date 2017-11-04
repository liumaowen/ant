
var mysql = require("mysql");
var conf = require("./conf");


	function  query(){
		
		var  connection = mysql.createConnection(conf);
		connection.connect();   
		if(arguments.length ==2){
			var f = arguments[1]	
			connection.query(arguments[0],function(err,data){	
				f(err,data)	
			})
			connection.end();
		}
        if(arguments.length ==3){
			
			var f = arguments[2]
			connection.query(arguments[0],arguments[1],function(err,data){	
				f(err,data)	
			})
			connection.end();	
		}			
	}
	
	
	module.exports = query;



	
	
	
	
	