<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<title>Logistics Services</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="fonts/Bebas/stylesheet.css">
		<link rel="stylesheet" href="fonts/HelveticaNeue/font.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Important Owl stylesheet -->
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/owl.theme.css">
		<!-- Color box-->
		<link rel="stylesheet" href="css/colorbox.css" />
		<!-- responsive tabs -->
		<link type="text/css" rel="stylesheet" href="css/responsive-tabs.css" />
		<!-- home slider-->
		<link href="css/pgwslider.css" rel="stylesheet">
		<link href="style.css" rel="stylesheet" media="screen">	
		<link href="responsive.css" rel="stylesheet" media="screen">		
	</head>

	<body>
	
		
		<div class="header_area">
		<div class="centre header">
		<div class="logo fix floatleft">
		<bR>
               <h2><b>An Application for Load Sharing in Trucks</b></h2>
		</div>
		<div class="menu_area floatright">
		<div class="top_menu">
		<ul id="nav">
                   
                    <%
               String user =  session.getAttribute("username").toString();
                    %>
                <li><a href="#"><%=user%></a></li>	
                </ul>
		</div>
		</div>
		</div>
		</div> <!-- End header area-->
		
		<div class="navigation_area">
		<div class="fix navigation">
		</div>
		</div>


		<div class="fix main_content_area">
		<div class="fix centre main_content">
		<div class="fix home_content floatleft">
		<div class="fix single_home_blog_content">
		<div class="fix single_blog_content_container">
		
                    
                <h2><i class="fa fa-hand-o-down"></i> View Results <a href="" class="floatright"> <i class="fa fa-angle-double-right"></i></a></h2>
               
                <table width="60%" border="1" align="center">
                <tr>
                <td width="140" height="32"><div align="center"><span class="style3"><b>Logistic Name</b> </span></div></td>
                <td width="140" height="32"><div align="center"><span class="style3"><b>Source</b> </span></div></td>
                <td width="140" height="32"><div align="center"><span class="style3"><b>Destination</b> </span></div></td>
                <td width="205"><div align="center"><span class="style3"><b>KG's</b></span></div></td>
                  <td width="205"><div align="center"><span class="style3"><b>Book</b></span></div></td>
                </tr>


            
                    <%
                    
                  
                        String source = request.getParameter("source");
                        String desti = request.getParameter("desti");
                    
               
                        
                        String query1="select * from route where source = '"+source+"' and desti = '"+desti+"'"; 
                        Statement st=connection.createStatement();
                        ResultSet rs=st.executeQuery(query1);
                        if(rs.next())
                        {
                          
                            
                        String query2="select * from route where source = '"+source+"' and desti = '"+desti+"'"; 
                        Statement st2=connection.createStatement();
                        ResultSet rs2=st2.executeQuery(query2);   
                            
                            
                        }