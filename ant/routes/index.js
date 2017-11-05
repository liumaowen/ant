var express = require('express');
var router = express.Router();
var query=require("../lib/query.js");
var async=require("async");

//渲染首页
router.get('/', function(req, res) {
	var cook = req.cookies;
    var loginUser = cook.loginUser;
    var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		arts:function(callback){
			query("select * from article order by id desc limit 0,20",function(err,result){
				callback(err,result);
				// console.log(result);
			})
		}
	};
	async.series(tasks,function(err,result){
		if(!err){
			res.render("./ant/index",{islog:loginUser,log:isLogined,f1:result.cate,zx:result.arts});
		}
	})


});

//渲染详情页
router.get("/article-285",function(req,res){
	var d=req.query.id;
	var cook = req.cookies;
    var loginUser = cook.loginUser;
 	var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		grzx:function(callback){
			query("select * from grzx",function(err,result){
				callback(err,result);
			})
		},
		datails:function(callback){
			query("select * from article where id=?",d,function(err,result){
				callback(err,result);
			})	
		},
		com:function(callback){
			query("select * from comments where articleID=? order by id desc limit 0,15",d,function(err,result){
				callback(err,result)
			})
		}
	};
	async.series(tasks,function(err,result){
		if(!err){
			res.render("./ant/article-285",{islog:loginUser,log:isLogined,f1:result.cate,da:result.datails,comments:result.com,gr:result.grzx})
		}else{
			console.log(err)
		}
	})
	
});

//分页
router.post("/getnum",function(req,res){
		var per_page = 10;
		var n=req.body.c;
		var per_pages=req.body.page;
		query("select * from article where cate=? limit ?,? ",[n,(per_pages-1)*per_page,per_page],function(err,data){
			 res.json({stu:data})
		})	

	
});

//点击导航每一项跳转
router.get("/tiao",function(req,res){
	var n=req.query;
	var cook = req.cookies;
    var loginUser = cook.loginUser;
 	var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		count:function(callback){
			query("select count(*) as num from article where cate=?",n.n,function(err,result){
				var per_page=10;
        		var total=Math.ceil(result[0].num/per_page);
				callback(err,total); 
			})
		},
		fenlei:function(callback){
			query("select * from article where cate=? order by id desc limit 0,10 ",n.n,function(err,result){
				callback(err,result)
			})	
		}
	};
	async.series(tasks,function(err,result){
		var n_t=n.n;
		if(!err){
			res.render("./ant/news",{islog:loginUser,log:isLogined,f1:result.cate,total:result.count,deta:result.fenlei,fen:n_t})
		}else{
			console.log(err)
		}
	})
	
});

//点击评论
router.post("/article_sub",function(req,res){
	var xq=req.body;
	var arr_article=[xq.time,xq.text_ar,xq.author,xq.articleID];
	console.log(xq)
	var nid=xq.articleID;
	var cook = req.cookies;
    var loginUser = cook.loginUser;
    var isLogined = !!loginUser;
    if(isLogined){
    	if(xq.text_ar==""|xq.text_ar=="内容不能为空"){
    		res.json({ok:1})
    	}else{
    		var tasks={
    			into:function(callback){
    				query("insert into comments(time,content,author,articleID)values(?,?,?,?)",arr_article,function(err,result){
    					callback(err,result);
    				})
    			}
    		};
    		async.series(tasks,function(err,result){
    			var r=xq.articleID;
    			res.json({data:xq})
    		})
    	}
    	
    }else{ 
		res.json({ok:0,id:nid})
    } 	
	
});

//登录页
router.get("/article_log",function(req,res){
	var n=req.query.d
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		}
	};
	async.series(tasks,function(err,result){
		if(!err){
			res.render("./ant/article_log",{f1:result.cate,nid:n});
		}else{
		}
	})
});

//点击登录
router.post("/get_log",function(req,res){
	var da=req.body;
	if(da.t==""&&da.p==""){
		res.json({ok:3})
	}else{
		query('select * from grzx where username=?', da.t,function(err,data){
			console.log(data)
			if(data.length>0){
				if(data[0].pass== da.p){
					res.cookie('loginUser', data[0],{httpOnly:false,maxAge: 60*60 * 1000 });
					res.json({ok:1,n:da.arn})
				}else{
					res.json({ok:0})
				}
			}else{
				res.json({ok:2})
			}
		})
	}
	
});



//进入注册页面
router.get("/_reg",function(req,res){
	var n1=req.query.n;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		}
	};
	async.series(tasks,function(err,result){
		if(!err){
			res.render("./ant/article_reg",{f1:result.cate,nid:n1});
		}else{
		}
	})
});

//注册按钮
router.post("/get_reg",function(req,res){
	var r=req.body;
	query("insert into grzx(username,pass)values(?,?)",[r.t,r.p],function(err,data){
		if(!err){
			res.json({ok:1,n:r.arn})
		}
	})
})

//点击注销
router.get("/logout",function(req,res){
	res.clearCookie("loginUser");
	res.redirect("/")
})

//论坛页面
router.get("/bbs",function(req,res){
	var cook = req.cookies;
    var loginUser = cook.loginUser;
    var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		bk:function(callback){
			query("select * from bk",function(err,result){
				callback(err,result);
			})
		},
		zhuti:function(callback){
			query("select * from zhuti",function(err,result){
				callback(err,result);
			})
		}

	};
	async.series(tasks,function(err,results){
		if(!err){
			res.render("./ant/bbs",{islog:loginUser,log:isLogined,f1:results.cate,zx:results.bk,zt:results.zhuti});
		}
	})
});

//主题页面
router.get("/forum",function(req,res){
	var n=req.query.id;
	var cook = req.cookies;
    var loginUser = cook.loginUser;
    var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		tiezi:function(callback){
			query("select * from tiezi where zhutiID=? order by id desc limit 0,19",n,function(err,result){
				callback(err,result);
			})
		}

	};
	async.series(tasks,function(err,results){
		if(!err){
			res.render("./ant/forum",{islog:loginUser,log:isLogined,f1:results.cate,tz:results.tiezi});
		}
	})
})
//主题详情页
router.get("/thread",function(req,res){
	var n=req.query.id;
	var cook = req.cookies;
    var loginUser = cook.loginUser;
    var isLogined = !!loginUser;
	var tasks={
		cate:function(callback){
			query("select * from category",function(err,result){
				callback(err,result);
			})
		},
		tiezi:function(callback){
			query("select * from tiezi where id=?",n,function(err,result){
				callback(err,result);
			})
		}

	};
	async.series(tasks,function(err,results){
		if(!err){
			res.render("./ant/thread",{islog:loginUser,log:isLogined,f1:results.cate,tz:results.tiezi});
		}
	})
})













module.exports = router;
