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
            String fname=request.getParameter("d1");
            String a=request.getParameter("d2");
    
           
                                                                        %>
	<div id="header">
		<ul>
			<li class="selected"><a href="index.html">home</a></li>
			<!--li><a href="login.jsp">our flowers</a></li>
                        <li><a href="phistory.jsp">PURCHASE HISTORY</a></li-->
			<li><a href="index.html">Logout</a></li>
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
                                   
                                     
                                     String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement();
                                     ResultSet rs5=st7.executeQuery("select * from product" ); 
                                     if(fname.equals("100 Rs -> 250 Rs")){
    
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
                                                                <td> <a href="delete2.jsp?pid=<%= rs5.getString(3) %>"><img class="im" src="Delete2.png" height="30" width="30" /></a></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                    <% 
                                        } %>
                                     <a href="resistrationad1.jsp">ADD NEW FLOWER</a>    
                                    <% }
                                      //response.sendRedirect("flowers.jsp");
                                    } catch(Exception f1)
                                    {
                                            out.println(f1);
                                     }
                                     con5.close();
                                      
                                    
                                     %>
                                        </ul>
                                     <%
                               
                            
                                String driver6="oracle.jdbc.driver.OracleDriver";
                                String url6="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con6=null;
                                Statement st8=null;
                                
                                try{
                                     Class.forName(driver6);
                                     con6=DriverManager.getConnection(url6, "test", "suman");
                                     st8= con6.createStatement();
                                     ResultSet rs6= st8.executeQuery("select * from product2" );  
                                    if (a.equals("251 Rs -> 350 Rs")){
                                   
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
                                                                <td> <a href="delete2.jsp?pid1=<%= rs6.getString("PID") %>"><img src="Delete2.png" height="30" width="30" /></a></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                    <% 
                                         
                                        }%>
                                     <a href="resistrationad2.jsp">ADD NEW FLOWER</a>
                                      <% }
                                      } catch(Exception f1)
                                    {
                                            out.println(f1);
                                     }
                                     con6.close();
                                      
                                    
                                       
                                    %>
                                    
                                   
					
				</div>
				<div>
			        </div>
			</div>
			<div class="section2">
						
				<div class="article">
					<h3></h3> 
 					<p></p>
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