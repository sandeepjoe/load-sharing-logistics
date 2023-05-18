<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%

        int i = 0;
        String username = session.getAttribute("username").toString();
        String source = request.getParameter("source");
        String dest = request.getParameter("dest");
        String dp1 = request.getParameter("dp1");
        String dp2 = request.getParameter("dp2");
        String dp3 = request.getParameter("dp3");
        String dp4 = request.getParameter("dp4");
        String tkgs = request.getParameter("tkgs");
        String cost = request.getParameter("cost");
        String status = "waitng";
        
        
        int kg = Integer.parseInt(tkgs);
        int co = Integer.parseInt(cost);
       
        
        try{

        PreparedStatement ps=connection.prepareStatement("insert into route values(?,?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,i);
        ps.setString(2,username);
        ps.setString(3,source);
        ps.setString(4,dest);
        ps.setString(5,dp1);
        ps.setString(6,dp2);
        ps.setString(7,dp3);
        ps.setString(8,dp4);
        ps.setInt(9,kg);
        ps.setInt(10,co);
        
        int ik=ps.executeUpdate();
        if(ik>0)
        {
        
       

        response.sendRedirect("log_details.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("log_details.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>