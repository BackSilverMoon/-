package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBUtil.DButil;
import Bean.Bean;


public class Dao {
	
	public void add(Bean r)
	{
			//获取连接对象
			Connection connection=DButil.getConnection();
			
			String sql="insert into new(New_title,New_main,New_person,New_date,New_kind) values(?,?,?,?,?);";
			System.out.print("添加成功");
			PreparedStatement preparedStatement=null;
			try
			{
		        preparedStatement = connection.prepareStatement(sql);
		   
				preparedStatement.setString(1, r.getNew_title());
				preparedStatement.setString(2, r.getNew_main());
				preparedStatement.setString(3, r.getNew_person());
				preparedStatement.setString(4, r.getNew_date());
				preparedStatement.setString(5, r.getNew_kind());
				preparedStatement.executeUpdate();
				//System.out.print("准备成功");
			}catch(SQLException e)
			{ 
				e.printStackTrace();
			}finally
			{
				DButil.close(preparedStatement);
				DButil.close(connection);
			}
			
		}
	
	}
	
