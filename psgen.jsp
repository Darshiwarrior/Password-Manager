<%-- 
    Document   : psgen
    Created on : 24-Jul-2021, 10:56:08 am
    Author     : srida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>
            PASS WORD GENARATOR
        </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,intial-scale=1">
      
        <link REL="stylesheet" HREF="pasgen.css" type="text/css">
        
        
        <style type="text/css">
            
            *
{
    margin: 0;
    padding: 0;
    font-family:CONSOLAS;


}



body{

    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background:rgb(240, 242, 245);
}



.inputbox
{
    position: relative;
    width: 450px;
}

.inputbox h2{

    font-size: 28px;
    color: #333;
}

.inputbox input{
    position: relative;

    width: 100%;
    height: 60px;
    border: none;
    margin: 15px 0 20px;
    background: transparent;
    outline: none;
    padding: 0 20px;
    font-size: 24px;
    letter-spacing: 4px;
    box-sizing: border-box;
    border-radius: 8px;
    color: #333;
    box-shadow: -4px -4px 10px rgba(255,255,255,1),
                 inset 4px 4px 10px rgba(0,0,0,0.05), 
                 inset -4px -4px 10px rgba(255,255,255,1),
                 4px 4px 10px rgba(0,0,0,0.05);


}

.inputbox input::placeholder
{
    letter-spacing: 0px;
}

.inputbox #btn
{
    position: relative;
    cursor: pointer;
    color: #fff;
    background: rgb(21, 90, 155);
    font-size: 24px;
    display: inline-block;
    padding: 10px 15px;
    border-radius: 8px;
}

.inputbox #btn:active
{
    background: rgba(204, 34, 119, 0.467);

}

.copy
{
    position: absolute;
    top:64px;
    right:15px;
    cursor: pointer;
    opacity: 0.6;

}

.copy:hover{
    opacity: 1;
}


        </style>
       
    </head>
    <body>
         <%
             
             
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            
            
            if(session.getAttribute("username")==null)
            {
            response.sendRedirect("login.jsp");
        }
            
            %>
            
            <%
                
                %>
                


        <div class="container">

    
<div class="inputbox">
    <h2>Random Password Generator</h2>
    <input type="text" name=""  placeholder="Create Password" id="password" readonly="">

    <img src="images.png"  class="copy" width="30px" height="30px" onclick="copyPassword();">
    <div id="btn" onclick="getPassword()">
        Generate Password
    </div>
</div>

        
        <div class="alertbox">


        </div>
    </div>
<script type="text/javascript">



var alertbox=document.querySelector('.alertbox')


function getPassword()
{
    var chars="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*(){}[]\|_+;:'<>,.?/";
    var passwordlength=12;
    var password="";
    for (var i=0;i<passwordlength;i++)
    {
        var randomNumber =Math.floor(Math.random()*chars.length);
        password +=chars.substring(randomNumber,randomNumber+1);

    }
    document.getElementById("password").value=password;
   
}

    function copyPassword()
    {
        var copyPass=document.getElementById("password");
        copyPass.select();
        copyPass.setSelectionRange(0,9999);
        document.execCommand("copy");
        alertbox.classList.toggle('active');
    }






</script>
    </body>
</html> 