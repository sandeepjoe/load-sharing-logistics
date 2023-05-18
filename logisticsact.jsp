<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try{

      
        
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery("select * from logistics where username= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
        
        session.setAttribute("username",username);

        response.sendRedirect("logisticshome.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("logistics.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>