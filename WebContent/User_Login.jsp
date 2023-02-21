<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form action="User_Login_back.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        用户登录
        <br>
        用户ID
        <input type="text" name="UserID" >
        <br>
        密码
        <input type="password" name="Upassword" >
        <br>
        <input type="submit" value="登录" >
        <input type="button" value="注册" onclick="location.href='User_Register.jsp'">
    </p>
</form>
</body>
</html>