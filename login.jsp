<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet, java.sql.SQLException "%>;

<%@page import="com.org.MD5"%>
<%
String uname=request.getParameter("uname");
String password=request.getParameter("pass");

out.println(password);
           com.org.MD5 cls=new MD5();
           String key=cls.getMd5(password);
        
             
int i=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	PreparedStatement ps=con.prepareStatement("select uname,password from project.customers where uname=? and password=?");
        
	ps.setString(1,uname);
	ps.setString(2,key);


	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{ i=1;
        session.setAttribute("username", uname);
		response.sendRedirect("welcome.jsp");													
	}
	if(i==0)
	{
		response.sendRedirect("index.html");
	}
	con.close();
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	}
%>