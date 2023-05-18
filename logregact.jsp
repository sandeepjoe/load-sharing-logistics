<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%

        int i = 0;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String image = request.getParameter("image");
        String status = "waitng";
        
       
        
        
        
        
    try{

    PreparedStatement ps=connection.prepareStatement("insert into logistics values(?,?,?,?,?,?,?,?,?,?)");
    ps.setInt(1,i);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,email);
    ps.setString(5,mobile);
    ps.setString(6,address);
    ps.setString(7,dob);
    ps.setString(8,gender);
    ps.setString(9,image);
    ps.setString(10,status);
   
   
    
    int ik=ps.executeUpdate();
    if(ik>0)
        {
        
       

        response.sendRedirect("logistics.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("logreg.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>