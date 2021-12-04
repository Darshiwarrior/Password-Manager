<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@page import="com.org.MD5"%>



<%

String result="";


String uname=session.getAttribute("username").toString();
String aname=request.getParameter("aname");
String password=request.getParameter("pass");

           

try
{

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");

PreparedStatement ps=con.prepareStatement("update passwords set pass=? where (aname=? AND uname=?);");

ps.setString(1, password);
ps.setString(2,aname);
ps.setString(3,uname);

int r=ps.executeUpdate();
if(r==0)
out.println("");	
else
result="Password Updated  Successfully";
con.close();}
catch (Exception e)
{
	System.out.println(e);
	
}
%>

<%@page import="com.org.Password"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <style type="text/css">
        body{
                background-image: url('suc.jpg');
                background-repeat: no-repeat;
                background-size:cover;
               
            }
            
        .top{
            text-align: center;
            color:white;
            font-size: 30px;
        }
        
        .intet{
            text-align: center;
            font-size: 20px;
            margin: 300px 240px;
            text-decoration: none;
            
            
        }



        </style>
        
    <body>
        <div class="top">
         Password Updated Successfully!!
        </div>
        <div class="intet">
        <h2>
       
        
      
       <a href="upd.jsp">Update Another Password?</a>
        
        </h2>
        </div>
       
    </body>
</html>
