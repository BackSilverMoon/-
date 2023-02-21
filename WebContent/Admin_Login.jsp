<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
<form action="Admin_Login_back.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        你好，管理员，请登录
        <br>
        用户ID
        <input type="text" name="AdminID" >
        <br>
        密码
        <input type="password" name="Adminpassword" >
        <br>
        <input type="submit" value="登录" >
    </p>
</form>
</body>
</html>