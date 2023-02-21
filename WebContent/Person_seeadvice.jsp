<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="DBUtil.DButil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻信息</title>
</head>
<body>

<%
    String StuName = (String)request.getParameter("StuName");
    Connection connection = DButil.getConnection();
    PreparedStatement preparedStatement=null;
    ResultSet rs=null;
    try {
        String sql = "select * from 学生基本信息表";
        preparedStatement=connection.prepareStatement(sql);
        rs=preparedStatement.executeQuery();
        while(rs.next()){
            if(StuName.equals(rs.getObject(2)))
            {
                //重要
                String StuID= (String) rs.getObject(1);
                session.setAttribute("StuID",StuID);
%>
<table border="1"cellspacing="0"style="text-align:center;">
    <tr>
        <td align="center" width=5%>学号</td>
        <td align="center" width=10%>姓名</td>
        <td align="center" width=5%>性别</td>
        <td align="center" width=5%>学院</td>
        <td align="center" width=5%>专业</td>
        <td align="center" width=5%>手机</td>
        <td align="center" width=5%>班级</td>
        <td align="center" width=5%>审核</td>
    </tr>
    <tr>
        <td align="center"><%=rs.getObject(1) %></td>
        <td align="center"><%=rs.getObject(2) %></td>
        <td align="center"><%=rs.getObject(3) %></td>
        <td align="center"><%=rs.getObject(4) %></td>
        <td align="center"><%=rs.getObject(5) %></td>
        <td align="center"><%=rs.getObject(6) %></td>
        <td align="center"><%=rs.getObject(7) %></td>
        <td align="center"><%=rs.getObject(8) %></td>
    </tr>
    <%
                }
            }
        } catch (SQLException  e) {
            e.printStackTrace();
        }finally{
        	DButil.close(rs);
        	DButil.close(preparedStatement);
        	DButil.close(connection);
        }
    %>
</table>
<form action="Admin_CheckStu_back2.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        <br>
        点击按钮通过审核
        <br>
        <input type="submit" value="通过" >
    </p>
</form>
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <input type="button" name="back" onclick="javascript:window.history.back();" value=返回上一页>
    <input type="button" value="返回菜单" onclick="location.href='User_Menu.jsp'" /> <br>
</p>
</body>
</html>