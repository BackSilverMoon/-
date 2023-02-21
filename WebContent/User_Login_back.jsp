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
    String UserID=(String)request.getParameter("UserID");
    System.out.println(UserID);
    session.setAttribute("UserID",UserID);

    String Upassword=(String)request.getParameter("Upassword");
    System.out.println(Upassword);
    session.setAttribute("Upassword",Upassword);

    if(UserID==""||Upassword=="")
    {
        out.print("<script language='javaScript'> alert('用户ID或密码输入为空'); window.history.back(); </script>");
    }
    else
    {

        int i=0;
        int j=0;
        Connection connection = DButil.getConnection();
        PreparedStatement preparedStatement=null;
        ResultSet rs=null;
        try {
            String sql= " select * from user ";
            preparedStatement=connection.prepareStatement(sql);
            rs=preparedStatement.executeQuery();
            while(rs.next())
            {

                if(UserID.equals(rs.getObject(1))&&Upassword.equals(rs.getObject(2)))
               {
                   if(rs.getObject(3).equals("yes"))
                   {j++;
                   System.out.print("通过审核了");
                   }
                   i++;
               }
            }
                  if(i==0)
                {
                    out.print("<script language='javaScript'> alert('用户名或密码错误'); window.history.back(); </script>");
                }
                else if(j==0)
                {
                    out.print("<script language='javaScript'> alert('该用户暂未通过审核，无法登录'); window.history.back(); </script>");
                }

                else if(j==1&&i==1)
                {
                    out.print("<script language='javaScript'> alert('登录成功');</script>");
                    response.setHeader("refresh", "0;url=User_Menu.jsp");
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