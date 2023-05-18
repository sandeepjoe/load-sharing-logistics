<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	
		<!-- facebook javascript code-->
		
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=549094108454486";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
		
		<!-- facebook javascript code-->
		<div class="header_area">
			<div class="centre header">
				<div class="logo fix floatleft">
						<a href="welcome.html">
			 	<img src="img/logo4.png" alt="logo"/> 
                        
                        
                       
						</a>	
				</div>
				<div class="menu_area floatright">
					
					<div class="top_menu">
						<ul id="nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="user.jsp">User</a></li>
							
							<li><a href="admin.jsp">Admin</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div> <!-- End header area-->
		
		<div class="navigation_area">
					<div class="fix navigation">
					<!--	<a href="">Home</a> <a href="">Temple Run 1.62</a>-->
					</div>
		</div>


		<div class="fix main_content_area">
			<div class="fix centre main_content">
				<div class="fix home_content floatleft">

					
					
					
					
					<div class="fix single_home_blog_content">
						<div class="fix single_blog_content_container">
							<h2><i class="fa fa-hand-o-down"></i> Top K <a href="" class="floatright"> <i class="fa fa-angle-double-right"></i></a></h2>

      
              
         <p align="center">&nbsp;</p>
        <table width="60%" border="1" align="center">
  <tr>
      <td width="140" height="32"><div align="center"><span class="style3"><b>Rank</b> </span></div></td>
   <td width="140" height="32"><div align="center"><span class="style3"><b>Username</b> </span></div></td>
  
	  <td width="205"><div align="center"><span class="style3"><b>Stress Status</b></span></div></td>
  </tr>

            
<%
int i = 0;
	
	
      	try 
	{
         
      		
      		String query1="select * from ranking order by rankk desc "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query1);
	
		
		%>
                
                
<%while ( rs.next() )
    
	   {

i++;
%>
  <tr>
       <td height="29"><div align="center"><%=i%></div></td>
    <td height="29"><div align="center"><%=rs.getString("user")%></div></td>
    <td><div align="center"><%=rs.getInt("rankk")%></div></td>
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
              <p align="right">&nbsp;</p>
             
						</div>
					</div>
				</div> <!-- End home content-->
				<div class="fix home_content_sidebar floatright">
				
	
				
				
					
					
					<div class="home_single_sidebar">
						<h2><i class="fa fa-bars"></i> Menu</h2>

							<div class="fix home_sidebar_top_apps">
								
                                                <h3><a href="admin_AllUsers.jsp" >All Users</a></h3></div>
							
						                                                
                                                <div class="fix home_sidebar_top_apps">
								
                                                <h3><a href="su.jsp">Select user</a></h3></div>
						
                                                <div class="fix home_sidebar_top_apps">
								
                                                <h3><a href="3.jsp">Content Level</a></h3></div>
						
                                                
                                                <div class="fix home_sidebar_top_apps">
								
						<h3><a href="1.jsp">Posting Behavior</a></h3></div>
								
						<div class="fix home_sidebar_top_apps">
								
						<h3><a href="2.jsp">Social Interaction</a></h3></div>
								
						<div class="fix home_sidebar_top_apps">
								
						<h3><a href="4.jsp" >Stress Status </a></h3></div>
						
                                                 <div class="fix home_sidebar_top_apps">
								
						<h3><a href="graph.jsp">Graph</a></h3></div>
                                                
                                                <div class="fix home_sidebar_top_apps">
								
						<h3><a href="topk.jsp" >Top K </a></h3></div>
							
                                                <div class="fix home_sidebar_top_apps">
								
						<h3><a href="logout.jsp">Logout</a></h3></div>
                                                


					</div>
					
					

				</div> <!-- End home sidebar-->
			</div>
		</div> <!-- End main content-->
		
		<div class="fix footer_top_area">
			<div class="fix centre footer_top">
				<div class="fix single_footer_top_container">
					
				<div class="fix copyright floatleft">
					 <p>Load Sharing in Trucks</p>
				</div>	
				<div class="fix footer_menu floatright">
					<ul>
						<li><a href="welcome.html">Home</a></li>
						<li><a href="page.html">About</a></li>
						<li><a href="androidnews.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>	
					
			</div> 
			</div>
		</div>
                
                <!-- End footer top area-->
		<div class="fix footer_bottom_area">
			<div class="fix centre footer_bottom">
				
				
			</div>
		</div> <!-- End bottom top area-->
		
		<script src="http://code.jquery.com/jquery.js"></script>

		<script src="js/pgwslider.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('.pgwSlider').pgwSlider();
			});
		</script>
		<script type="text/javascript" src="js/selectnav.min.js"></script>
		<script type="text/javascript">
			selectnav('nav', {
			  label: '-Navigation-',
			  nested: true,
			  indent: '-'
			});
		</script>	
		
		<!-- Include owl js plugin -->
		<script src="js/owl.carousel.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
			 
			$("#owl-example").owlCarousel({
			
			items : 4,
			itemsCustom : false,
			itemsDesktop : [1199,4],
			itemsDesktopSmall : [980,3],
			itemsTablet: [768,2],
			itemsTabletSmall: false,
			itemsMobile : [479,1],
			singleItem : false,
			itemsScaleUp : false,
			navigation : true,
			navigationText : ["prev","next"],
			pagination : false
			
			});
			 
			});
		</script>
		
    <!-- Responsive Tabs JS -->
    <script src="js/jquery.responsiveTabs.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').responsiveTabs({
                rotate: false,
                startCollapsed: 'accordion',
                collapsible: 'accordion',
                setHash: true,
                disabled: [4,5]
            });



        });
    </script>
	<script type="text/javascript">
		$('#report_link').click(function(){
		  $('#report').slideToggle('normal');
		});
		
		$('#report_link').click(function(){
		  $('#older_versions').hide('normal');
		});
		
		$('#older_version').click(function(){
		  $('#older_versions').slideToggle('normal');
		});
		
		$('#older_version').click(function(){
		  $('#report').hide('normal');
		});
		
	</script>
	
		<script src="js/jquery.colorbox.js"></script>
	<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group1").colorbox({rel:'group1'});
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				$(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
				$(".group4").colorbox({rel:'group4', slideshow:true});
				$(".ajax").colorbox();
				$(".youtube").colorbox({iframe:true, innerWidth:640, innerHeight:390});
				$(".vimeo").colorbox({iframe:true, innerWidth:500, innerHeight:409});
				$(".iframe").colorbox({iframe:true, width:"80%", height:"80%"});
				$(".inline").colorbox({inline:true, width:"50%"});
				$(".callbacks").colorbox({
					onOpen:function(){ alert('onOpen: colorbox is about to open'); },
					onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
					onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
					onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
					onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
				});

				$('.non-retina').colorbox({rel:'group5', transition:'none'})
				$('.retina').colorbox({rel:'group5', transition:'none', retinaImage:true, retinaUrl:true});
				
				//Example of preserving a JavaScript event for inline calls.
				$("#click").click(function(){ 
					$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
					return false;
				});
			});
		</script>

	</body>
</html>
