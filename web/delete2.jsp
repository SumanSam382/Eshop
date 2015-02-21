<%-- 
    Document   : delete
    Created on : 20 Oct, 2014, 9:33:09 AM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.sql.*;" %>
        <% 
        String p,p1;
        p=request.getParameter("pid");
        p1=request.getParameter("pid1");
        out.println(p);
        out.println(p1);
                                String driver4="oracle.jdbc.driver.OracleDriver";
                                String url4="jdbc:oracle:thin:@localhost:1521:XE";
                                String query1;
                                Connection con4=null;
                                Statement st6=null;
                                query1="delete from product where pid= '"+ p+"'";
                                try{
                                     Class.forName(driver4);
                                     con4=DriverManager.getConnection(url4, "test", "suman");
                                     st6=con4.createStatement();
                                     int i3=st6.executeUpdate(query1);
                                     
                                        if(i3>0)
                                        {
                                            response.sendRedirect("admin2.jsp");

                                        }
                                      con4.close();
                                        
                                     } catch(Exception e2)
                                    {
                                            out.println(e2);
                                     }
                                
                                String driver1="oracle.jdbc.driver.OracleDriver";
                                String url1="jdbc:oracle:thin:@localhost:1521:XE";
                                String query;
                                Connection con1=null;
                                Statement st1=null;
                                query="delete from product2 where pid= '"+ p1+"'";
                                try{
                                     Class.forName(driver1);
                                     con1=DriverManager.getConnection(url1, "test", "suman");
                                     st1=con1.createStatement();
                                     int i=st1.executeUpdate(query);
                                     
                                        if(i>0)
                                        {
                                            response.sendRedirect("admin2.jsp");

                                        }
                                      con1.close();
                                        
                                     } catch(Exception e)
                                    {
                                            out.println(e);
                                     }
                              
         %>
    </body>
</html>
