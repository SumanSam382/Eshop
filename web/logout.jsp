<%-- 
    Document   : logout
    Created on : 22 Oct, 2014, 12:50:02 AM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background: url("thenku.jpg") no-repeat center top;
        }
    </style>
    <body>
          <%@page import="java.sql.*;" %>
        <% 
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidte");
            response.setHeader("pragma","no-cache");
            
            response.setDateHeader("Expires",0);
                            String  pass=(String)session.getAttribute("passward");
                            String driver4="oracle.jdbc.driver.OracleDriver";
                                String url4="jdbc:oracle:thin:@localhost:1521:XE";
                                String query1;
                                Connection con4=null;
                                Statement st6=null;
                                query1="delete from cart where pass= '"+ pass+"'";
                                try{
                                     Class.forName(driver4);
                                     con4=DriverManager.getConnection(url4, "test", "suman");
                                     st6=con4.createStatement();
                                     int i=st6.executeUpdate(query1);
                                     
                                        if(i>0)
                                        {
                                            %>
                                                                                   <%  
                                        }
                                      con4.close();
                                        
                                     } catch(Exception e2)
                                    {
                                            out.println(e2);
                                     }
                             
                            String driver="oracle.jdbc.driver.OracleDriver";
                                String url="jdbc:oracle:thin:@localhost:1521:XE";
                                String query;
                                Connection con=null;
                                Statement st=null;
                                query="delete from cart2 where pass= '"+ pass+"'";
                                try{
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     st.executeUpdate(query);
                                     con.close();
                                        
                                     } catch(Exception e)
                                    {
                                            out.println(e);
                                     }
                                
          session.setAttribute("passward", null);
          session.invalidate();
         
            
            %>
            <script>
                                               if(confirm("You are logged out"+"\n"+"if you want to login press OK"+"\n"+"Else press Cancel")=== true)
                                           {
                                            window.location.href="login.jsp";
                                           }   
                                           else{
                                               window.location.href="index.html";
                                              
                                           }
                                           
                                            </script>

    </body>
</html>
