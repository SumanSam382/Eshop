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
                                query1="delete from cart where pid= '"+ p+"'";
                                try{
                                     Class.forName(driver4);
                                     con4=DriverManager.getConnection(url4, "test", "suman");
                                     st6=con4.createStatement();
                                     int i3=st6.executeUpdate(query1);
                                     
                                        if(i3>0)
                                        {
                                            response.sendRedirect("cart.jsp");

                                        }
                                      con4.close();
                                        
                                     } catch(Exception e2)
                                    {
                                            out.println(e2);
                                     }
                                String driver="oracle.jdbc.driver.OracleDriver";
                                String url="jdbc:oracle:thin:@localhost:1521:XE";
                                String query0;
                                Connection con=null;
                                Statement st=null;
                                query0="delete from phistory where pid= '"+ p+"'";
                                try{
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     int i2=st.executeUpdate(query0);
                                     
                                        if(i2>0)
                                        {
                                            response.sendRedirect("cart.jsp");

                                        }
                                      con.close();
                                        
                                     } catch(Exception eee)
                                    {
                                            out.println(eee);
                                     }
 
                                
                                String driver1="oracle.jdbc.driver.OracleDriver";
                                String url1="jdbc:oracle:thin:@localhost:1521:XE";
                                String query;
                                Connection con1=null;
                                Statement st1=null;
                                query="delete from cart2 where pid= '"+ p1+"'";
                                try{
                                     Class.forName(driver1);
                                     con1=DriverManager.getConnection(url1, "test", "suman");
                                     st1=con1.createStatement();
                                     int i=st1.executeUpdate(query);
                                     
                                        if(i>0)
                                        {
                                            response.sendRedirect("cart.jsp");

                                        }
                                      con1.close();
                                        
                                     } catch(Exception e)
                                    {
                                            out.println(e);
                                     }
                                String driver11="oracle.jdbc.driver.OracleDriver";
                                String url11="jdbc:oracle:thin:@localhost:1521:XE";
                                String query11;
                                Connection con11=null;
                                Statement st11=null;
                                query11="delete from phistory2 where pid= '"+ p1+"'";
                                try{
                                     Class.forName(driver11);
                                     con11=DriverManager.getConnection(url11, "test", "suman");
                                     st11=con11.createStatement();
                                     int i1=st11.executeUpdate(query11);
                                     
                                        if(i1>0)
                                        {
                                            response.sendRedirect("cart.jsp");

                                        }
                                      con1.close();
                                        
                                     } catch(Exception e11)
                                    {
                                            out.println(e11);
                                     }

         %>
    </body>
</html>
