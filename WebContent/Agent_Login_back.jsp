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
    String AgentID=(String)request.getParameter("AgentID");

    session.setAttribute("AgentID",AgentID);

    String Apassword=(String)request.getParameter("Apassword");

    session.setAttribute("Apassword",Apassword);

    if(AgentID==""||Apassword=="")
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
            String sql= " select * from agent ";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {
                if(AgentID.equals(rs.getObject(1))&&Apassword.equals(rs.getObject(2)))
                {i++;}
            }
            if(i==0)
            {
            	
                out.print("<script language='javaScript'> alert('工号或密码错误'); window.history.back(); </script>");
            }
            else
            {
                out.print("<script language='javaScript'> alert('登录成功');</script>");
                response.setHeader("refresh", "0;url=Agent_Menu.jsp");
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