<%-- 
    Document   : dell
    Created on : 27-Jul-2021, 8:57:38 am
    Author     : srida
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.org.MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Your Passwords</title>
    </head>
    <style type="text/css">
        body{
            text-align: center;
            
        }
        
        .intet{
            font-size: 30px;
            margin: 350px 200px;
        }
        #cen{
                margin: 0;
                padding: 0;
                position: absolute;
                top:0;
                left:10%;
                text-decoration: none;
                color: white;
            }
    </style>
    <body>
        <div id="cen">
        <table width="100%" height="40" border="0"  cellspacing="5" cellpadding="5" bgcolor="white">
<tr>
<td>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1">

<td width="80">
<font color="white">
<h3><a href="welcome.jsp">
Store Password
    </a>
</h3>
</font>
</td>

<td width="200" nowrap>
<font color="white">
<h3>
    <a href="gen.jsp">
Password Generator
    </a>
</h3>
</font>
</td>

<td width="200" nowrap>
<font color="white">
<h3>
    <a href="upd.jsp">
Update Password
    </a>
</h3>
</font>
</td>

<td width="200" nowrap>
<font color="white">
<h3>
    <a href="get.jsp">
Search Password
    </a>
</h3>
</font>
</td>

<td width="200" nowrap>
<font color="white">
<h3>
    <a href="getall.jsp">
Show All Passwords
    </a>
</h3>
</font>
</td>

<td width="200"nowrap>
<font color="white">
<h3>
    <a href="dell.jsp">
Delete All Passwords
    </a>
</h3>
</font>
</td>
<td width="80">
<font color="white">
<h3>
    <a href="about.jsp">
About Us
    </a>
</h3>
</font>
</td>

</table>
</td>
</tr>
</table>
        </div>
        <%

String result="";


String uname=session.getAttribute("username").toString();



try
{

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");

PreparedStatement ps=con.prepareStatement("delete from  passwords  where uname=?;");


ps.setString(1,uname);

int r=ps.executeUpdate();
if(r==0)
out.println("failure");	
else
result="Password Updated  Successfully";
con.close();}
catch (Exception e)
{
	System.out.println(e);
	
}
%>
<div class="intet"
        <h1>All Your Passwords are Deleted!!</h1>
    </div>
    </body>
</html>
