<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try{

      
        
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery("select * from admin where username= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
        

        response.sendRedirect("adminhome.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("admin.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>