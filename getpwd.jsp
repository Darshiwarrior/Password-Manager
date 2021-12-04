<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>







<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Your Stored Passwords</title>
        
    </head>
    <style type="text/css">
        body{
                background-image: url('regis.jpg');
                background-repeat: no-repeat;
                background-size:cover;
                margin: 120px 400px;
               
            }
            #center{
                margin: 0;
                padding: 0;
                position: absolute;
                top:0;
                left:10%;
            }
        



        </style>
        
    <body>
        <div id="center">
        <table width="100%" height="40" border="0"  cellspacing="5" cellpadding="5" bgcolor="white">
<tr>
<td>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1">

<td width="200">
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
       Your Password is: 
<%

String uname=session.getAttribute("username").toString();
String aname=request.getParameter("aname");
           
try
{

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("select pass from passwords where (aname=? and uname=?);");
        
	ps.setString(1,aname);
     ps.setString(2,uname);
        
        ResultSet rs=ps.executeQuery();
        %>
        <table border=1 align="center" style="text-align: center" width="100%" cellspacing="2" cellpadding="2">
            <thead>
                <tr>
                    <th>
                        Password
                    </th></tr>
            </thead>
            <tbody>
                
                <% 
                   while(rs.next())
                {
                %>
                <tr>
                    <td><%=rs.getString("pass")%>
                    </td></tr>
                <%}
%>
                
         
                </tbody>
        </table><br>
        <%
            
            con.close(); 
            }
               
catch(Exception e)
{
out.print(e.getMessage());
}%><br>


    </body>
</html>
