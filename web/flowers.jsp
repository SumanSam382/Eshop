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
<center>
    <form method="get" name="f1" action="Search.jsp">
        <br><br>
        <select name="d1">
            <option>Select</option>
            <option>100 Rs -> 250 Rs</option>
        </select>

        &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" onclick="Search.jsp" placeholder="1" name="b1" value="Search" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <select name="d2">
            <option>Select</option>
            <option>251 Rs -> 350 Rs</option>
        </select>

       &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" onclick="Search.jsp" name="b2" value="Search" />
       <br><br>
     </form>
</center>
    
<%@page import="java.sql.*;" %>
<%
   String s,s1,pid,pname,pid1,pname1,s2;    
   int f=1;
            String driver="oracle.jdbc.driver.OracleDriver";
            String url="jdbc:oracle:thin:@localhost:1521:XE";
            Connection con=null;
            Statement st=null,st2=null;
            try{
                Class.forName(driver);
                con=DriverManager.getConnection(url, "test", "suman");
                st=con.createStatement();
                st2=con.createStatement();
                
                ResultSet rs=st.executeQuery("select * from product");  
                ResultSet rs1=st2.executeQuery("select * from product2"); 
               

                //session.setAttribute("passward", fname1);
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
		<div class="gallery">
			<h1>our flowers</h1>		
			
				<div>
                                    
                                    <%
                                         while(rs.next()){    
                                                pid=rs.getString(3);
                                                pname=rs.getString(2);
                                                s2=rs.getString(4);
                                        %>
                                        
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                        <a href="cart.jsp?pid=<%= pid %>">
                                                    
                                        <%
					out.println("<img title=RS:"+s2 +" onmousemove= myFunction()  id= myImg onmouseover=bigImg(this) onmouseout=normalImg(this) width=140 height=140 src=images/"+  rs.getString(2)  +" />");               
                                    %>
                                           </a>
                                    <%  
                                        out.println("<span id=sp>RS:"+ s2 +"</span>");       
                                         }
                                    %>
                                    
             
                                    			
				</div>		
				<ul>
                                        
					 <%
                                         while(rs1.next()){    
                                                pid1=rs1.getString(3);
                                                pname1=rs1.getString(2);
                                                %>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                       
                                       <a href="cart.jsp?pid1=<%= pid1 %>">
                                        <%
					out.println("<input type=image title=RS:"+rs1.getString(4) +" placeholder= flower onmousemove= myFunction()  id= myImg1 onmouseover=bigImg(this) onmouseout=normalImg(this) width=140 height=140 src=images/"+  rs1.getString(2)  +" />");               
                                        
                                        %>
                                          </a>
                                    <%
                                        out.println("<span> RS:"+ rs1.getString(4) +"</span>");
                                         }
                                   } catch(Exception e1)
                                    {
                                            out.println(e1);
                                     }
                                con.close();
                                     %>
                                
                                </ul>	
                                     <a href="cart.jsp"><img src="cart.jpg" height="50" width="150"></a>
			
				
		</div>
	</div>
<script>
function bigImg(x) {
    x.style.height = "200px";
    x.style.width = "200px";
    
}

function normalImg(x) {
    x.style.height = "140px";
    x.style.width = "140px";
}
</script>
	<div id="footer">
		<div>
			<div class="connect">
				<h4>Follow us:</h4>
				<ul>
					<li class="facebook"><a href="http://facebook.com" target="_blank">facebook</a></li>
					<li class="twitter"><a href="http://twitter.com" target="_blank">twitter</a></li>	
				</ul>
			</div>
			<p>Created by Suman ghosh:Sumanghosh382@gmail.com</p>
		</div>
	</div>
        <%
        
        %>
</body>
</html>