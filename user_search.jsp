
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
                    <script>alert('Booking Sucessfully..!')</script>
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
		<center>
            <h2  style="color: #0b6c81">Search</h2>
            
            <hr>
            <br>
            <form action="user_searchact_1.jsp" method="post" >
            <table>           
            <tr>
            <th><font color="black" size="4">Source :</th>
            <th><input type="text" placeholder="Type Source" name="source" required></th>
            </tr>

            <tr><th><font color="black" size="4">Destination :</th>
            <th><input type="text" placeholder="Type Destination" name="desti" required></th>
            </tr> 

            <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
            <td>
            <input type="submit" value="Search"  style="height:30px; width:65px" />
            <button type="reset" class="cancelbtn" style="height:30px; width:65px" >Cancel</button>
            </td>
             
            </table>
            </form>
            </center>
		</div>
		</div>
		</div> <!-- End home content-->
				
                
                <div class="fix home_content_sidebar floatright">
		<div class="home_single_sidebar">
		<h2><i class="fa fa-bars"></i> Menu</h2>

                <div class="fix home_sidebar_top_apps">
                <h3><a href="userhome.jsp">Home</a></h3>
                </div>
                <div class="fix home_sidebar_top_apps">
                <h3><a href="user_profile.jsp">View Profile</a></h3>
                </div>
                <div class="fix home_sidebar_top_apps">
                    <h3><a href="user_search.jsp"><font color="red">Search</font></a></h3>
		</div>
                <div class="fix home_sidebar_top_apps">
		<h3><a href="user_bookings.jsp">View Bookings</a></h3>
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
