<%-- 
    Document   : resistration1
    Created on : 20 Oct, 2014, 9:18:17 PM
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
            background-image: url("ab.jpg");
        }
    </style>
    <body>
         <%@page import="java.sql.*;" %>
        <% 
            String name,phno,email,pass,addr,query1;
            name=request.getParameter("name");
            phno=request.getParameter("tel");
            email=request.getParameter("email");
           // pass=request.getParameter("password");
            addr=request.getParameter("address");
            /*out.println(name);
            out.println(phno);
            out.println(email);
            out.println(pass);
            out.println(addr);*/
            query1="Insert into product2 values('"+ name +"','"+ phno +"','"+ email +"','"+ addr +"')";
                                      String driver4="oracle.jdbc.driver.OracleDriver";
                                String url4="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con4=null;
                                Statement st6=null;
                               
                                
                                     Class.forName(driver4);
                                     con4=DriverManager.getConnection(url4, "test", "suman");
                                     st6=con4.createStatement();
                                     int i=st6.executeUpdate(query1);
                                     
                                        if(i>0)
                                        {  
                                            //out.println("succesfully updated");
                                        %>
                                        <script>
                                           if(confirm("Congrats your account has created"+"\n"+"if you want to login press OK"+"\n"+"Else press Cancel")=== true)
                                           {
                                            window.location.href="admin2.jsp";
                                           }   
                                           else{
                                               window.location.href="admin2.jsp";
                                              
                                           }
                                       
                                            </script>
                                       
                                         
                                       <% 
                                        }
                                      con4.close();
            
            %>
    <center>
            <a href="login.jsp">login </a>
          
    </center>
    </body>
</html>
