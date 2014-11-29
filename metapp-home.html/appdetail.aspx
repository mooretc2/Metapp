<%@ Page Language="VB" AutoEventWireup="false" CodeFile="appdetail.aspx.vb" Inherits="appdetail" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
<meta name="viewport" content ="width=device-width, initial-scale=1">
<title> metApp : <% Response.Write(name) %> Details </title>
<script src="http://code.jquery.com/jquery-1.5.min.js"></script>

<style type="text/css">
	.ui-dialog. ui-header,
	.ui-dialog. ui-content,
	.ui-dialog. ui-footer{
		max-width: 640px; 
	}
	<!-- 
		define the properties for the dialog window 
		They are tyle sheet properties in the format of text
	-->	
</style>

</head>
<body>
    <header> 
        <a href="Home.aspx" class="backBtn">Home</a> 
        <h1> Application Details </h1>
    </header>
    <div class="container">
        <div class="appIcon">

        </div>
        <div class="appName">

        </div>
        <div class="developer">

        </div>
        <div class="description">

        </div>
        <div class="OS">

        </div>
    </div>
    <footer>
  	    <h6>Copyright @ 2014</h6>
    </footer>
</body>
</html>
