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
  <h1>Admin Login</h1>
  <form method="post" action='admin2.jsp' name='f1' onsubmit="return func(this)">
    <input placeholder='Password'  name='text2' type='password'>
    <button actoin='func()'/>LOGIN</button>
    </form>
    <script>
            function func(f1){
             if(f1.text2.value==='admin' )
             {
               
               return true;
             }
             else
             {
              alert("passward not matching");
               return false;
             }
         }
         </script>
    
</section>

</body>
</html>
