<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ page import="Bean.Bean"%>
<%@ page import="Dao.Dao"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻修改</title>
</head>
<body>


<%
       ArrayList<Bean>a1=new ArrayList<Bean>();
      Dao d=new Dao();
      String New_title2 = request.getParameter("New_title2");
      session.setAttribute("New_title2", New_title2);
      a1=d.searchbyname(New_title2);
 
%>
	<table  border="1" width="100%">
		<tr>
			<th>新闻标题</th>
			<th>关键字</th>
			<th>撰稿人</th>
			<th>日期</th>
			<th>栏目</th>
		</tr>	
		<%
		for(int i=0;i<a1.size();i++)
		{
			Bean in=a1.get(i);
			String title = in.getNew_title();
			String main = in.getNew_main();
			String person = in.getNew_person();
			String date = in.getNew_date();
			String kind = in.getNew_kind();
		%>
		<tr>
		<td><%=(title) %></td>
		<td><%=(main) %></td>
		<td><%=(person) %></td>
		<td><%=(date) %></td>
		<td><%=(kind) %></td>
	</tr>
		<% 	
		}
		%>
		</table>
	<input style="margin-left:230px;margin-top:90px;width:150px;height:60px" type = "button" value = "取消更新点击这里" onclick = "window.location.href ='indexgl.jsp'">
	<input style="margin-left:230px;margin-top:90px;width:150px;height:60px" type = "button" value = "确认更新请点击这里" onclick = "window.location.href ='querenxiugaiq.jsp'">
	