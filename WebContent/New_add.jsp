<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset=UTF-8">
<title>新闻拟制</title>
</head>
<body>
   
              <form action="servlet1?method=add" method="post">
    新闻标题:<input type="text" name="New_title" />
    <br>
    新闻关键字:<input type="text" name="New_main" />
    <br>
    新闻撰稿人:<input type="text" name="New_person" />
    <br>
    新闻日期:<input type="text" name="New_date" />
    <br>
    新闻栏目:<input type="text" name="New_kind" />
   <button type="submit" class="b">保   存</button>
</form>
                
   </body>
        
                                 