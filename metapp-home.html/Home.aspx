<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
   
< meta name="viewport" content ="width=device-width, initial-scale=1">
<title> Basic Template - jQuery Mobile: Design and Develop </title>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.css" />
<script src="http://code.jquery.com/jquery-1.5.min.js"></script>
<script src="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.js"></script>
<script type="text/javascript">
</script>

</head>

<body class="container">
 
    <div data-role="page">

    	<div data-role="header">
              <h1> metApp </h1>
    	</div>

    	<div data-role="content">

       	 <h1>Welcome to metApp!</h1>
         <p>metApp is the application about applications. </p>
	     <p>This web application is designed to help users & developer efficiently find out more about the apps their curious about.</p>
		
	     <p> <a href="appdetail.aspx" data-role="button" data-inline="true" rel="external"> Application Details </a> </p>
		
    	</div>


    	<div data-role="footer">
		<div data-role="navbar">
			<ul>
				<li> <a href="http://miamioh.edu/cec/academics/departments/cse/index.html"> CSE Department </a> </li>
				<li> <a href="https://www.miami.muohio.edu/"> Miami - Home </a> </li>
			</ul>
		</div>
  		    <h6>Copyright @ 2014</h6>
        </div>

    </div>
</body>
</html>

