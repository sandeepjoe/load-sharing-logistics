<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%

        int i = 0;
        String username = session.getAttribute("username").toString();
        String logname = request.getParameter("logname");
        String source = request.getParameter("source");
        String desti = request.getParameter("desti");
        String kgs = request.getParameter("kgs");
        String amount = request.getParameter("amount");
        
        String status = "waitng";
        
       
        
        
        
        
    try{

    PreparedStatement ps=connection.prepareStatement("insert into bookings values(?,?,?,?,?,?,?,?)");
    ps.setInt(1,i);
    ps.setString(2,username);
    ps.setString(3,logname);
    ps.setString(4,source);
    ps.setString(5,desti);
    ps.setString(6,kgs);
    ps.setString(7,amount);   
    ps.setString(8,status);
   
   
    
    int ik=ps.executeUpdate();
    if(ik>0)
        {
        
       

        response.sendRedirect("user_search.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("user_search.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>