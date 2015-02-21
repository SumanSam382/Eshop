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
                                <form method="get" name="f1" action="admin3.jsp">
                                    <br><br>
                                    <select name="d1">
                                        <option>Select</option>
                                        <option>100 Rs -> 250 Rs</option>
                                    </select>

                                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" onclick="admin3.jsp" placeholder="1" name="b1" value="Search" />
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <select name="d2">
                                        <option>Select</option>
                                        <option>251 Rs -> 350 Rs</option>
                                    </select>

                                   &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" onclick="admin3.jsp" name="b2" value="Search" />
                                   <br><br>
                                 </form>

                                    
					
				</div>
				<div>
					<img src="images/lady-handling-flower2.jpg" alt="" />				
				</div>
			</div>
			<div class="section2">
						
				<div class="article">
					<h3></h3> 
 					<p></p>
                                        <p><b>ADMIN AREA</b></p>
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