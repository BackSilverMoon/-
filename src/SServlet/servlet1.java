package SServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Bean.Bean;

/**
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("2");	
		request.setCharacterEncoding("UTF-8");
		String method = request.getParameter("method");
		//System.out.println(method);	
		if("add".equals(method))
		{
			Add(request,response);
			
		}
		else if("delete".equals(method))
		{
			Delete(request,response);
			
		}
		else if("update".equals(method))
		{
			Update(request,response);
			
		}
		
	}
	
	protected void Add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		request.setCharacterEncoding("UTF-8");
		//System.out.println("3");
		  Dao d=new Dao();
	      String New_title = request.getParameter("New_title");
	      String New_main = request.getParameter("New_main");
	      String New_person = request.getParameter("New_person");
	      String New_date = request.getParameter("New_date");
	      String New_kind = request.getParameter("New_kind");
	
	  Bean r = new Bean();
	  r.setNew_title(New_title);
	  r.setNew_main(New_main);
      r.setNew_person(New_person);
      r.setNew_date(New_date);
      r.setNew_kind(New_kind);
      d.add(r);
	}
	
	protected void Delete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		//System.out.println(4);
		  ArrayList<Stu>a1=new ArrayList<Stu>();
	      Dao d=new Dao();
	      String dxname=request.getParameter("name");
	      a1=d.searchbyname(dxname);
	  	for(int i=0;i<a1.size();i++)
		{
			Stu in=a1.get(i);
			String id=in.getId();
			String name=in.getName();
			String sex=in.getSex();
			String age=in.getAge();
			String zhuanye=in.getZhuanye();
			String class1=in.getClass1();
			System.out.println(a1);
			
		}
	  	request.setAttribute("a1", a1);
	 
	  	request.getRequestDispatcher("/delete.jsp").forward(request,response);
	}
	
	protected void Update(HttpServletRequest request,HttpServletResponse response)throws IOException, ServletException
	{
		
		   Dao d=new Dao();
		     Stu r=new Stu();
		     String yname=request.getParameter("yname");
		     String upname=request.getParameter("upname");
		      String upsex =request.getParameter("upsex");
		      String upage=request.getParameter("upage");
		      String upzhuanye =request.getParameter("upzhuanye");
		      String upclass=request.getParameter("upclass");
		      System.out.println("已经获取到信息了");
		      if(d.judge1(upsex)==0||d.judge2(upzhuanye)==0)
		      {
		    	  if(d.judge1(upsex)==0)
		    	  {
		       	request.setAttribute("falsemsg","性别输入错误");
		       	request.getRequestDispatcher("querenxiugaiq.jsp").forward(request, response);
		    	  }
		    	  else if(d.judge2(upzhuanye)==0)
		    	  {
		    		  request.setAttribute("falsemsg2","专业输入错误");
		    		  request.getRequestDispatcher("querenxiugaiq.jsp").forward(request, response);
		    	  }
		      }
		      else
		      {
		      d.update(upname,upsex,upage,upzhuanye,upclass,yname);
		      }
		     
	
	}
}
