<!DOCTYPE html>
<!-- Template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="utf-8" />
<title>Flower Shop</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
<!--[if IE 6]>
	<link rel="stylesheet" type="text/css" href="css/ie6.css" media="all" />
<![endif]-->
<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="css/ie7.css" media="all" />
<![endif]-->
</head>

<body>
     <%@page import="java.sql.*;" %>
        <%
           
                                String driver1="oracle.jdbc.driver.OracleDriver";
                                String url1="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con1=null;
                                Statement st3=null;
                                String p,p1,g1,g2,g3,g4,g11,g22,g33,g44,query,query1,query11,query12,k,k1,k2;
                                p=request.getParameter("pid");
                                 String pass=(String)session.getAttribute("passward");
                                try{
                                     Class.forName(driver1);
                                     con1=DriverManager.getConnection(url1, "test", "suman");
                                     st3=con1.createStatement();
                                    
                                     
                                        
                                        
                                        
                                    ResultSet rs2=st3.executeQuery("select * from product where PID= '" + p+ "'" );  
                                                                        %>
	<div id="header">
		<ul>
			<li class="selected"><a href="index.html">home</a></li>
			<li><a href="login.jsp">our flowers</a></li>
                        <li><a href="phistory.jsp">PURCHASE HISTORY</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
		<div class="logo">
			<a href="index.html"><img src="images/logo.gif" alt="" /></a>
		</div>
	</div>
	<div id="body">
		<div class="payment">
			<h1>payment &amp; ordering</h1>	
			<div class="section1">	
				<div class="article">
                                    <%
                                   
                                      if(rs2.next())
                                        {  
                                            
                                            g1=rs2.getString(1);
                                            g2=rs2.getString(2);
                                            g3=rs2.getString(3);  
                                            g4=rs2.getString(4);
                                            
                                      query="Insert into cart values('"+ g1 +"','"+ g2 +"','"+ g3 +"','"+ g4 +"','"+ pass +"')";
                                      query11="Insert into PHISTORY values('"+ g1 +"','"+ g2 +"','"+ g3 +"','"+ g4 +"','"+ pass +"')";
                                      String driver="oracle.jdbc.driver.OracleDriver";
                                      String url="jdbc:oracle:thin:@localhost:1521:XE";
                                      Connection con=null;
                                      Statement st=null;
                               
                                
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     st.executeUpdate(query11);
                                     con.close(); 
                                    
                                    
                                      String driver3="oracle.jdbc.driver.OracleDriver";
                                String url3="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con3=null;
                                Statement st5=null;
                               
                                
                                     Class.forName(driver3);
                                     con3=DriverManager.getConnection(url3, "test", "suman");
                                     st5=con3.createStatement();
                                     int i=st5.executeUpdate(query);
                                     if(i>0)
                                        if(i>0)
                                        {
                                            out.println("<br/> You buy this");

                                        }
                                      con3.close(); 
                                    }
                                    } catch(Exception e1)
                                    {
                                            out.println(e1);
                                     }
                                     con1.close();

                                    %>
                                    <%
                                     
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
                                            
                                           
                                      
                                     %>
                                     
   					<ul>
						<table cellspacing="15">
                                                        
                                                        <tbody>
                                                            <tr>
                                                                <td><% out.println("<img id= myImg  width=140 height=140 src=images/"+  rs5.getString(2)  +" />"); %></td>
                                                                <td><%= rs5.getString(1) %></td>
                                                                <td><%= rs5.getString(3) %></td>
                                                                <td>RS:<%= rs5.getString(4) %></td>
                                                                <td> <a href="delete.jsp?pid=<%= rs5.getString(1) %>"><img class="im" src="Delete2.png" height="30" width="30" /></a></td>
                                                                
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                    <% 
                                        }
                                      //response.sendRedirect("flowers.jsp");
                                    } catch(Exception f1)
                                    {
                                            out.println(f1);
                                     }
                                     con5.close();
                                      
                                    
                                     %>
                                        </ul>
                                     <%
                                 String driver2="oracle.jdbc.driver.OracleDriver";
                                String url2="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con2=null;
                                Statement st4=null;
                                p1=request.getParameter("pid1");
                                try{
                                     Class.forName(driver2);
                                     con2=DriverManager.getConnection(url2, "test", "suman");
                                     
                                     st4=con2.createStatement();
                                     
                                        
                                        
                                        
                                      
                                    ResultSet rs3 =st4.executeQuery("select * from product2 where  PID= '" + p1+ "'");
                               
                                      if(rs3.next())
                                        {  
                                            
                                            g11 =rs3.getString(1);
                                            g22 =rs3.getString(2);
                                            g33 =rs3.getString(3);  
                                            g44 =rs3.getString(4);
                                            query1="Insert into cart2 values('"+ g11 +"','"+ g22 +"','"+ g33 +"','"+ g44 +"','"+ pass +"')";
                                            query12="Insert into PHISTORY2 values('"+ g11 +"','"+ g22 +"','"+ g33 +"','"+ g44 +"','"+ pass +"')";
                                      String driver8="oracle.jdbc.driver.OracleDriver";
                                      String url8="jdbc:oracle:thin:@localhost:1521:XE";
                                      Connection con8=null;
                                      Statement st8=null;
                               
                                
                                     Class.forName(driver8);
                                     con8=DriverManager.getConnection(url1, "test", "suman");
                                     st8=con8.createStatement();
                                     st8.executeUpdate(query12);
                                     con8.close(); 
                                    
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
                                            out.println("<br/> You buy this ");

                                        }
                                      con4.close();
                                        }
                                     } catch(Exception e2)
                                    {
                                            out.println(e2);
                                     }
                                      con2.close();
                                    %>
                                    <%
                            
                                String driver6="oracle.jdbc.driver.OracleDriver";
                                String url6="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con6=null;
                                Statement st8=null;
                                
                                try{
                                     Class.forName(driver6);
                                     con6=DriverManager.getConnection(url6, "test", "suman");
                                     st8= con6.createStatement();
                                     ResultSet rs6= st8.executeQuery("select * from cart2 where pass='"+ pass+"'" );  
                                     while(rs6.next())
                                        {  
                                     %>
						<table cellspacing="15">
                                                        
                                                        <tbody>
                                                            <tr>
                                                                <td><% out.println("<img id= myImg1  width=140 height=140 src=images/"+  rs6.getString(2)  +" />"); %></td>
                                                                <td><%= rs6.getString(1) %></td>
                                                                <td><%= rs6.getString(3) %></td>
                                                                <td>RS:<%= rs6.getString(4) %></td>
                                                                <td> <a href="delete.jsp?pid1=<%= rs6.getString("PID") %>"><img src="Delete2.png" height="30" width="30" /></a></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                    <% 
                                         
                                        }
                                      //response.sendRedirect("flowers.jsp");
                                    } catch(Exception f1)
                                    {
                                            out.println(f1);
                                     }
                                     con6.close();
                                      
                                    
                                       
                                    %>
                                    
                                    <a href="flowers.jsp"><img src="shop.jpg" border-style="none"  height="50" width="150" /></a>

					
				</div>
				<div>
					<img src="images/lady-handling-flower2.jpg" alt="" />				
				</div>
			</div>
			<div class="section2">
						
				<div class="article">
					<h3></h3> 
 					<p></p>
                                        <a href="bill.jsp"><img src="order.jpg"   height="50" width="150" /></a>
                                        
                                        
                                        <ul>
						<li><p><p></li>
						<li><p></p></li>
						<li><p></p></li>	
					</ul>		
				</div>	
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<div class="connect">
				<h4>Follow us:</h4>
				<ul>
					<li class="facebook"><a href="http://facebook.com/freewebsitetemplates" target="_blank">facebook</a></li>
					<li class="twitter"><a href="http://twitter.com/fwtemplates" target="_blank">twitter</a></li>		
				</ul>
			</div>
			<p>Created by Suman ghosh:: sumanghosh382@gmil.com</p>
		</div>
	</div>
</body>
</html>