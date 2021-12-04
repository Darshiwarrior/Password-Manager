<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@page import="com.org.MD5"%>
<%

String result="";
String uname=request.getParameter("username");
String password=request.getParameter("password");

           com.org.MD5 cls=new MD5();
           String pass=cls.getMd5(password);


String email=request.getParameter("email");
String address=request.getParameter("address");

String state=request.getParameter("state");
String country=request.getParameter("country");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("insert into customers values(?,?,?,?,?,?)");
ps.setString(1,uname);
ps.setString(2,pass);
ps.setString(3,email);
ps.setString(4,address);

ps.setString(5,state);
ps.setString(6,country);
int r=ps.executeUpdate();
if(r==0)
out.println("failure");	
else
result=" Registered Successfully";
con.close();}
catch (Exception e)
{
	System.out.println(e);
	
}
%>

<div style="text-align:center">
		<form action="index.html">
		 <h1><%=result%></h1><br>
		<input type="submit" value="Go To Login Page">
		</form><br><br>
</div>