<%-- 
    Document   : bill
    Created on : 20 Oct, 2014, 10:31:18 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill</title>
    </head>
    <style>
        body{
            background-image: url("back22.jpg");
        }
    </style>

    <body>
           <%@page import="java.sql.*;" %>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidte");
            response.setHeader("pragma","no-cache");
            
            response.setDateHeader("Expires",0);
            
            String name,phno,addr,pass,email,r,r1;
            int total=0,t,t1;
            

            name=(String)session.getAttribute("name");
            phno=(String)session.getAttribute("phno");
            addr=(String)session.getAttribute("addr");
            pass=(String)session.getAttribute("passward");
            email=(String)session.getAttribute("email");
                        String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement();
                                     ResultSet rs5=st7.executeQuery("select * from cart where pass='"+ pass+"'" );  
                                     while(rs5.next())
                                        {
                                             r =rs5.getString(4);
                                             t =Integer.valueOf(r); 
                                            // t=t*Integer.valueOf(s);
                                             total=total+t;  
                                      
                                     %>
                                        <center>
						<table  cellspacing="2" cellpadding="11">
                                                       <thead>
                                                            <tr>
                                                                <th>ITEM</th>
                                                                <th>Name</th>
                                                                <th>PHONE NO</th>
                                                                <th>RS</th>
                                                                
                                                            </tr>
                                                        </thead>
 
                                                        <tbody>
                                                            <tr>
                                                                <td><% out.println("<img id= myImg  width=140 height=140 src=images/"+  rs5.getString(2)  +" />"); %></td>
                                                                <td><%= name %></td>
                                                                <td><%= phno %></td>
                                                                <td><%= rs5.getString(4) %></td>
                                                                                                            
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                        </center>
                                    <% 
                                        }
                                      //response.sendRedirect("flowers.jsp");
                                    } catch(Exception f1)
                                    {
                                            out.println(f1);
                                     }
                                     con5.close();
                                     %>
                                     <%
                                String driver="oracle.jdbc.driver.OracleDriver";
                                String url="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con=null;
                                Statement st=null;
                                
                                try{
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     ResultSet rs=st.executeQuery("select * from cart2 where pass='"+ pass+"'" );  
                                     while(rs.next())
                                        {  
                                          r1 =rs.getString(4);
                                        t1 =(Integer.valueOf(r1));
                                        //t1=t1*(Integer.valueOf(s));
                                         total=total+t1;  
                                      

                                           
                                      
                                     %>
                                     <center>
						<table  cellspacing="2" cellpadding="11">
                                                       <thead>
                                                            <tr>
                                                                <th>ITEM</th>
                                                                <th>Name</th>
                                                                <th>PHONE NO</th>
                                                                <th>RS</th>
                                                                
                                                            </tr>
                                                        </thead>
 
                                                        <tbody>
                                                            <tr>
                                                                <td><% out.println("<img id= myImg  width=140 height=140 src=images/"+  rs.getString(2)  +" />"); %></td>
                                                                <td><%= name %></td>
                                                                <td><%= phno %></td>
                                                                <td><%= rs.getString(4) %></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                        </center>
                                    <% 
                                        }
                                      //response.sendRedirect("flowers.jsp");
                                    } catch(Exception f)
                                    {
                                            out.println(f);
                                     }
                                     con.close();
                                     %>
                                     <%
                                     out.println("<center>");
                                     out.println("YOUR TOTAL IS----> "+total+"<br/><br/>");
                                     out.println("Hello Mr/Mrs"+" \" "+name+" \" "+"your item/items are deliverd shortly to"+" \" "+addr+" \" "+"freely");
                                    
                                     out.println("<br/>"+"A copy of generated bill is sent to your:"+"  \" "+email+" \"  "+"Email address");
                                     out.println("<br/><br/><br/><br/>"+"<a href=flowers.jsp><img src=shop.jpg   height=55 width=200 /></a>");
                                     out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<a href=logout.jsp><img src=logout.jpg   height=55 width=200 /></a>");
                                     
                                     out.println("</center>");
            %>
        </body>
</html>
