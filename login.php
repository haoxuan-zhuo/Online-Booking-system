
<?php
    session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "";


       
    // DBMS connection code -> hostname, 
    // username, password, database name 
    $db = mysqli_connect($servername, $username, $password, $dbname); 
    $errors = [];
    // User login 
    if (isset($_POST['login'])) { 
        // Data sanitization to prevent SQL injection 
        $username = mysqli_real_escape_string($db, $_POST['user_name']); 
        $password = mysqli_real_escape_string($db, $_POST['password']); 
       
        // Error message if the input field is left blank 
        if (empty($username)) { 
            array_push($errors, "Username is required"); 
        } 
        if (empty($password)) { 
            array_push($errors, "Password is required"); 
        } 
       
        // Checking for the errors 
        if (count($errors)) {
          echo $errors; 
          return;
        }

        // Password matching 
        $password = md5($password);
          
        $query = "SELECT userid, username, email FROM users WHERE username = '$username'"; 
        $results = $db->query($query);
        
        // $results = 1 means that one user with the 
        // entered username exists 
        if (mysqli_num_rows($results) == 1) { 
            $user = mysqli_fetch_assoc($results);
              var_dump($user);
            // Storing username in session variable 
            $_SESSION['username'] = $user['username']; 
              
        //     // Welcome message 
            $_SESSION['success'] = "You have logged in!"; 
              
              var_dump($_SESSION);
        //     // Page on which the user is sent 
        //     // to after logging in 
            header('location: index.php'); 
        } 
        else { 
              
        //     // If the username and password doesn't match 
            array_push($errors, "Username or password incorrect");  
        } 
        
    } 
      

   
?> 


<!doctype html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  

    <title>Login page</title>


    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/floating.css" rel="stylesheet">
  </head>
 




      <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</html>
