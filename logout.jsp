<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet, java.sql.SQLException "%>;

<%@page import="com.org.MD5"%>
<%
String uname=session.getAttribute("username").toString();
%>
<%
session.setAttribute("uname", uname);
session.invalidate();
response.sendRedirect("index.html");
%>
