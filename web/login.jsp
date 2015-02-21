
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Login</title>

  <link rel="stylesheet" href="css1/reset.css">

    <link rel="stylesheet" href="css1/style.css" media="screen" type="text/css" />

</head>

<body>

  <section>
  <span></span>
  <h1>Login Section</h1>
  <form method="get" name='f1'>
    <input placeholder='Email'name='text1' type='text'>
    <input placeholder='Password'  name='text2' type='password'>
    <button/>LOGIN</button>
  <a href="Resistration.jsp">Create a new account</a><br><br>
    <a href="admin1.jsp">ADMIN AREA</a>
  </form>
        
</section>
    <%@page import="java.sql.*;" %>
    <%
        String t1,t2,p,p1,p2,p3,r;
        t1=request.getParameter("text1");
        t2=request.getParameter("text2");
        if(t1!=null && t2!=null){
        String driver="oracle.jdbc.driver.OracleDriver";
            String url="jdbc:oracle:thin:@localhost:1521:XE";
            Connection con=null;
            Statement st=null;
            try{
                Class.forName(driver);
                con=DriverManager.getConnection(url, "test", "suman");
                st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from login  where passward='" +t2+ "'");  
                  if(rs.next()){
                      r=rs.getString(2);
                      p3=rs.getString(1);
                   if(t2.equals(r) && t2!=null && t1.equals(p3) && t1!=null){
                    session.setAttribute("passward", t2);
                    p=rs.getString(3);
                    p1=rs.getString(4);
                    p2=rs.getString(5);
                    
                    session.setAttribute("name", p);
                    session.setAttribute("phno", p1);
                    session.setAttribute("addr", p2);
                    session.setAttribute("email", p3);
                    
                    response.sendRedirect("flowers.jsp"); 
                      
                   }
                  }  
                 else{
                            %>
                          <script>
                          alert("To buy you have to enter your Email and passward correctly"+"\n"+"If you dont have any account you have to create it");
                          </script>
                <% 
                  }
                  
                      con.close();
                  
  
            }catch(Exception e)
            {
                out.println(e);
            }
        }
        %>
        
            
</body>

</html>