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

    <%
                    if(request.getParameter("m1")!=null){
                    %>
                    <script>alert('Booking Accepted Sucessfully..!')</script>
                    <%}
                    if(request.getParameter("m2")!=null){
                    %>
                    <script>alert('Login Failed..!')</script>
                    <%
                    }
                    %>
    
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
		
                    
                <h2><i class="fa fa-hand-o-down"></i> View Bookings <a href="" class="floatright"> <i class="fa fa-angle-double-right"></i></a></h2>
               
                <table width="60%" border="1" align="center">
                <tr>
                    <td width="140" height="32"><div align="center"><span class="style3"><b><font color="#0ca3dc">Username</b> </span></div></td>
                <td width="140" height="32"><div align="center"><span class="style3"><b><font color="#0ca3dc">Source</b> </span></div></td>
                <td width="140" height="32"><div align="center"><span class="style3"><b><font color="#0ca3dc">Destination</b> </span></div></td>
                <td width="205"><div align="center"><span class="style3"><b><font color="#0ca3dc">KG's</b></span></div></td>
                <td width="205"><div align="center"><span class="style3"><b><font color="#0ca3dc">Status</b></span></div></td>
                <td width="205"><div align="center"><span class="style3"><b><font color="#0ca3dc">Accept</b></span></div></td>
               
                </tr>


            
                    <%
                    
                
                    
               
                        try 
                        {
                        String query1="select * from bookings where  logname = '"+user+"'"; 
                        Statement st=connection.createStatement();
                        ResultSet rs=st.executeQuery(query1);


                    %>


                <%
                        while ( rs.next() )

                           {

                %>
                  <tr>
                      
                  <td height="29"><div align="center"><%=rs.getString("username")%></div></td>
                  <td height="29"><div align="center"><%=rs.getString("source")%></div></td>
                  <td height="29"><div align="center"><%=rs.getString("desti")%></div></td>
                  <td height="29"><div align="center"><%=rs.getString("kgs")%></div></td>
                  <td height="29"><div align="center"><%=rs.getString("status")%></div></td>
                   <td height="29"><div align="center"><a href="log_bookings1.jsp?username=<%=rs.getString("username")%>&source=<%=rs.getString("source")%>&desti=<%=rs.getString("desti")%>&kgs=<%=rs.getString("kgs")%>">click</a></div></td>
                
                  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</table>
        
                   
		</div>
		</div>
		</div> <!-- End home content-->
				
                
                <div class="fix home_content_sidebar floatright">
		<div class="home_single_sidebar">
		<h2><i class="fa fa-bars"></i> Menu</h2>

                <div class="fix home_sidebar_top_apps">
                    <h3><a href="logisticshome.jsp">Home</a></h3>
                </div>
                <div class="fix home_sidebar_top_apps">
                <h3><a href="log_details.jsp">Enter Details</a></h3>
                </div>
                <div class="fix home_sidebar_top_apps">
                <h3><a href="log_bookings.jsp"><font color="red">View Bookings</font></a></h3>
		</div>
                <div class="fix home_sidebar_top_apps">
		<h3><a href="log_bal.jsp">View Balances Kg's</a></h3>
                </div>
                <div class="fix home_sidebar_top_apps">
		<h3><a href="logout.jsp">Logout</a></h3>
                </div>
                </div>
		</div> <!-- End home sidebar-->
		</div>
		</div> <!-- End main content-->
		
		<div class="fix footer_top_area">
		<div class="fix centre footer_top">
		<div class="fix single_footer_top_container">
		</div> 
		</div>
		</div>
                
                <!-- End footer top area-->
		<div class="fix footer_bottom_area">
		<div class="fix centre footer_bottom">
		<div class="fix copyright floatleft">
		 <p>Load Sharing in Trucks</p>
		</div>
		</div>
		</div> <!-- End bottom top area-->
		
                </body>
</html>
