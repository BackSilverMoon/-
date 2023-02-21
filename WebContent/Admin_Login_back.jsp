<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="DBUtil.DButil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String AdminID=(String)request.getParameter("AdminID");

    session.setAttribute("AdminID",AdminID);

    String Adminpassword=(String)request.getParameter("Adminpassword");

    session.setAttribute("Adminpassword",Adminpassword);

    if(AdminID==""||Adminpassword=="")
    {
        out.print("<script language='javaScript'> alert('工号或密码输入为空'); window.history.back(); </script>");
    }
    else
    {

        int i=0;
        Connection connection = DButil.getConnection();
        PreparedStatement preparedStatement=null;
        ResultSet rs=null;
        try {
            String sql= " select * from admin ";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {
                if(AdminID.equals(rs.getObject(1))&&Adminpassword.equals(rs.getObject(2)))
                {i++;}
            }
            if(i==0)
            {
                out.print("<script language='javaScript'> alert('工号或密码错误'); window.history.back(); </script>");
            }
            else
            {
                out.print("<script language='javaScript'> alert('登录成功');</script>");
                response.setHeader("refresh", "0;url=Admin_Menu.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DButil.close(rs);
            DButil.close(preparedStatement);
            DButil.close(connection);
        }
    }
%>
</table>
</body>
</html>