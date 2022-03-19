<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="main.css" />

  <title>Login</title>


  </head>
<body>
  <div id="main">
    <h1>Login</h1>
    <form method="post">
      username <input type="text" name="username" class="text" required>
      Password <input type="password" name="password" class="text" required>
      <input type="submit" name="submit" id="sub">
    </form>


</div>
</body>

<?php
if (isset($_POST['submit'])){
  $un = $_POST['username'];
  $pw = $_POST['password'];

  if($un=='username' && $pw=='password'){
    header("location:index.php");
    exit();
  }
  else{
    echo "Invalid Uswername/Password";
  }
}
?>