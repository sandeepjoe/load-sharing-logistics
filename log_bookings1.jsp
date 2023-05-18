<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@page import="Logistics.Mail"%>
<%@ page session="true" %>

<%

        int i = 0;
        String logname = session.getAttribute("username").toString();
        String username = request.getParameter("username");
        String source = request.getParameter("source");
        String desti = request.getParameter("desti");
        String kgs = request.getParameter("kgs");
       // String amount = request.getParameter("amount");
        
        int kg = Integer.parseInt(kgs);
        
        String status = "Accepted";
        
        String email = null;
        String msg = "Booking Accepted Suucessfully";
        
        int a = 0; int b = 0; int c = 0;
        
        
        
    try{
        
         
        Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from users where username= '"+username+"'");
        if(rs1.next())
        {
            
          email = rs1.getString("email");
            
        }
        
        
        
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery("select * from route where logname= '"+logname+"' and source = '"+source+"' and desti = '"+desti+"'");
        if(rs.next())
        {
        a  = rs.getInt("kgs");       
        }
         
        b = a - kg ;
        
        if(b>0){            
        Mail m = new Mail();
        m.secretMail(msg,email,email);
            
        PreparedStatement ps=connection.prepareStatement("update bookings set status = '"+status+"'  where logname = '"+logname+"' and username = '"+username+"' and source = '"+source+"' and desti = '"+desti+"'"  );
        PreparedStatement ps1=connection.prepareStatement("update route set kgs = "+b+"  where logname = '"+logname+"' and source = '"+source+"' and desti = '"+desti+"' "  );
        
        ps1.executeUpdate();
        
        int ik=ps.executeUpdate();
        if(ik>0)
        {       
        response.sendRedirect("log_bookings.jsp?m1=success");
        }
        
        else 
        {
        response.sendRedirect("log_bookings.jsp?m2=LoginFail");
        }
   
            
            
        }
        
        
        else{
            
            
        }
        
        
        
        
        
        
   
    
   
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>