<%-- 
    Document   : gen
    Created on : 26-Jul-2021, 3:39:39 pm
    Author     : srida
--%>

<%@page import="com.org.Password"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Generator</title>
        
    </head>
    <style type="text/css">
        body{
                background-image: url('gen.jpg');
                background-repeat: no-repeat;
                background-size:cover;
               
            }
            
        .top{
            text-align: center;
            color:white;
            
        }
        
        .intet{
            text-align: center;
            font-size: 20px;
          
            text-decoration: underline;
            color: white;
            position: absolute;
            top:40%;
            left:40%;
            
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
    <a href="logout.jsp">
Logout
    </a>
</h3>
</font>
</td>

</table>
</td>
</tr>
</table>
        </div>
        <div class="top">
         <h1>Random Password</h1>
        </div>
        <div class="intet">
            <h1>Random Password</h1>
        <h2>
            
        <%
            com.org.Password obj =new Password();
            String result=obj.makePassword(12);
            out.println(result);
        %>
        </h2>
        </div>
       
    </body>
</html>
