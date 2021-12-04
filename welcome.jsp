<!doctype html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>
            Store Password
        </title>
        <style type="text/css">
            
            
            body{
    margin: 0;
    padding: 0;
    font-family: 'Times New Roman', Times, serif;
     background-image: url('palms.jpg');
                background-repeat: no-repeat;
                background-size:cover;
                text-align: center;
   
}

body h1{
    text-decoration: underline;
}
.center
{
    position: absolute;
    top: 50%;
    left:50%;
    transform: translate(-50%,-50%);
    width: 400px;
    background: white;
    border-radius: 10px;

}

.center h2{
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid silver;
}

.center form{
    padding: 0 40px;
    box-sizing: border-box;
}

.txtfield
{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
}

.txtfield input{
    width:100%;
    padding: 0 5px;
    height: 40px;
    font-size: 16px;
    border: none;
    background: none;
    outline: none;
}

.txtfield label
{
    position: absolute;
    top:50%;
    left:5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
}

.txtfield span::before{
    content: '';
    position: absolute;
    top:40px;
    left:0;
    width: 0%;
    height: 2px;
    background-color: #2691d9;
}

.txtfield input:focus ~ label,
.txtfield input:valid ~ label{
    top:-5px;
    color: #2691d9;
}

.txtfield input:focus ~ span::before,
.txtfield input:valid ~ span::before{
    width: 100%;
}

.pass
{
    margin: -5px 0 20px 5px;
    color: #a6a6a6;
    cursor: pointer;
}

.pass:hover
{
    text-decoration:underline;
}

input[type="submit"]{
    width: 100%;
    height:50px;
    border: 1px solid;
    background: #2691d9;
    border-radius: 25px;
    font-size: 18px;
    color:#e9f4fb;
    font-weight: 700;
    cursor: pointer;
    outline:none;
}
input[type="submit"]:hover{
    border-color: #2691d9;
    transform: .5s;

}


.signuplink
{
    margin: 30px 0;
    text-align: center;
    font-size: 16px;
    color: #666666;
}

.signuplink a{
    color: #2691d9;
    text-decoration: none;
}

.signuplink a:hover{
    text-decoration: underline;
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
    </head>
    <body>
        <div id="cen">
        <table width="100%" height="40" border="0"  cellspacing="5" cellpadding="5" bgcolor="white">
<tr>
<td>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1">

<td width="200" nowrap>
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
Log Out
    </a>
</h3>
</font>
</td>

</table>
</td>
</tr>
</table>
        </div>
        <h1>
        <%
            String uname=session.getAttribute("username").toString();
            out.println("Welcome "+uname);
            

            %>
            <h1>
       
                
                 
                         
        <div class="center">
            
            
            <h2>
                Store Password
            </h2>
           
            <form method="post" action="psmng.jsp">
                <div class="txtfield">
                    <input type="text"  name="aname" required>
                    <span></span>
                    <label> Account Name</label>
                </div>
                <div class="txtfield">
                    <input type="password" name="pass" required>
                    <span>
                        
                    </span>
                    <label> Password</label>
                </div>


                <input type="submit"  value="Save Your Password">
                

            </form>

        </div>
 
                               
    </body>
    
</html>
