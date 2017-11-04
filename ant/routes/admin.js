var express = require('express');
var router = express.Router();
var fs=require('fs');
var query=require('../lib/query.js');

//首页
router.get('/', function(req, res) {
  res.render('./admin/index');
});
//资讯页面
router.get('/article',function(req,res){
	query('select count(*) as num from article',function(err,data){
    var num=data[0].num;
    var per_page = 3;
    var d=Math.ceil(num/per_page);
    res.render('./admin/article',{total_rows:d})
  })
	
});
//添加资讯页面
router.get("/addarticle",function(req,res){
	res.render("./admin/article-add")
});


//添加资讯
router.post("/insertArt",function(req,res){
	var f=req.files;
	var d=req.body;
	fs.readFile(f[0].path,function(err,data){
		if(!err){
			fs.writeFile('./public/upload/'+f[0].originalname,data,function(err,data1){});
			d.pic=f[0].originalname;
			var arr=[d.title,d.sj,d.zz,d.fenlei,d.pic,d.zy,d.content];
			query('insert into article(title,shijian,author,cate,pic,summary,content)values(?,?,?,?,?,?,?)',arr,function(err,data){
				
				if(!err){
					res.json({a:1})
				}else{
					res.json({a:0})
				}
			})

		}
	})
	
});

//分页
router.post("/getList",function(req,res){
	var per_page = 3;
	var per_pages = req.body.page;
	query('select * from article limit ?,?', [(per_pages - 1) * per_page, per_page], function (err, data1) {
	res.json({stu: data1});
	})
});
//删除资讯
router.get("/delete",function(req,res){
	var d=req.query.id;
	query('delete from article where id=?',d,function(err,data){
		res.redirect("/admin/article")
	})
});
//编辑资讯
router.get("/editor",function(req,res){
	var d1=req.query.id;
	query("select * from article where id=?",d1,function(err,data){
		res.render("./admin/edit",{user:data[0]})
	})
});
router.post("/update",function(req,res){
	var d2=req.body;
	var f2=req.files;
	if(f2.length==0){
		query("select * from article where id=?",d2.id,function(err,data){
		d2.pic=data[0].pic;
		var arr=[d2.title,d2.sj,d2.zz,d2.fenlei,d2.pic,d2.zy,d2.content,d2.id];
		query("update article set title=?,shijian=?,author=?,cate=?,pic=?,summary=?,content=? where id=?",arr,function(err,data){
			if(!err){
					res.json({a:1})
				}else{
					res.json({a:0})
				}
		})
	  })
	}else{
		fs.readFile(f2[0].path,function(err,data){
		if(!err){
			fs.writeFile('./public/upload/'+f2[0].originalname,data,function(err,data1){});
			d2.pic=f2[0].originalname;
			var arr1=[d2.title,d2.sj,d2.zz,d2.fenlei,d2.pic,d2.zy,d2.content,d2.id];
			query('update article set title=?,shijian=?,author=?,cate=?,pic=?,summary=?,content=? where id=?',arr1,function(err,data){
				if(!err){
					res.json({a:1})
				}else{
					res.json({a:0})
				}
			})

		}
	 })
	}

});

//评论列表
router.get("/comments",function(req,res){
	query('select count(*) as num from comments',function(err,data){
    var num=data[0].num;
    var per_page = 3;
    var d=Math.ceil(num/per_page);
    res.render('./admin/comments',{total_rows:d})
    })
});
//获取评论分页
router.post("/getcom",function(req,res){
	var per_page = 3;
	var per_pages = req.body.page;
	query('select * from comments limit ?,?', [(per_pages - 1) * per_page, per_page], function (err, data1) {
	res.json({stu: data1});
	})
});
//添加评论页面
router.get("/addcomments",function(req,res){
	res.render("./admin/addcomments")
});
//添加评论
router.post("/insertCom",function(req,res){
	var d=req.body;
	var arr=[d.sj,d.zz,d.aID,d.content];
	query('insert into comments(time,author,articleID,content)values(?,?,?,?)',arr,function(err,data){
		if(!err){
			res.json({a:1})
		}else{
			res.json({a:0})
		}
	})	
});
//删除评论
router.get("/delete_com",function(req,res){
	var d=req.query.id;
	query('delete from comments where id=?',d,function(err,data){
		res.redirect("/admin/comments")
	})
})
//编辑评论
router.get("/editor_com",function(req,res){
	var d1=req.query.id;
	query("select * from comments where id=?",d1,function(err,data){
		res.render("./admin/editcomments",{user:data[0]})
	})
})
//编辑评论完提交
router.post("/edicomaja",function(req,res){
	var d2=req.body;
	arr1=[d2.sj,d2.aID,d2.zz,d2.content,d2.id]
	query('update comments set time=?,articleID=?,author=?,content=? where id=?',arr1,function(err,data){
		if(!err){
			res.json({a:1})
		}
	})
})

module.exports = router;
