<%@ Page Language="VB" AutoEventWireup="false" CodeFile="appdetail.aspx.vb" Inherits="appdetail" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
< meta name="viewport" content ="width=device-width, initial-scale=1">
<title> Basic Template - jQuery Mobile: Design and Develop </title>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.css" />
<script src="http://code.jquery.com/jquery-1.5.min.js"></script>
<script src="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.js"></script>

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

<body class="container">
 
    <div data-role="page">

    	<div data-role="header">
              <h1> Application Details </h1>
	      <p><a href="Home.aspx" data-role="button" data-inline="true" data-icon="arrow-l" 
                  rel="external"> Go Back </a> </p>
    	</div>

    	<div data-role="content">
	
    <h1>Application A Details Page</h1>

	<div data-role="collapsible-set">

<%--	       <div data-role="collapsible">
               		<h3> Internal Dialog Window </h3>
			<p> Internal Dialog Windows are dialog windows that are defined within the same html document.
			    This window, for instance, is referencing an internal page via its id "int-dialog"</p>
			<p> <a href="#int-dialog" data-role="button" data-inline="true" data-rel="dialog"> Open Internal Dialog </a> </p>
	       </div>--%>

<%--		<div data-role="collapsible">
                	<h3> External Dialog Window </h3>
			<p> External Dialog Windows are dialog windows that are seperate html documents.
			    This window, for instance, is referencing an external web page via its URL </p>
			<p> <a href="http://www.users.miamioh.edu/schweitj/dialog-window.html" data-role="button" data-inline="true" data-rel="dialog"> Open External Dialog </a> </p>

	    </div>--%>

        <div data-role="collapsible" active="false">
            <h3> User Comments </h3>
			<p> </p>
	    </div>
        <p> <a href="http://www.users.miamioh.edu/schweitj/dialog-window.html" data-role="button" data-inline="true" data-rel="dialog"> Download </a> </p>

		
		<%--<div data-role="collapsible">
                	<h3> Multimedia External Window </h3>
			<p> This window is also an external dialog window.  It too is being referenced via its URL. 
			    The unique thing with this external window is that it will navigate to a youtube video.</p>
			<p> <a href="http://www.users.miamioh.edu/schweitj/media-dialog-window.html" data-role="button" data-inline="true" data-rel="dialog"> Play Now </a> </p>
		</div>

		<div data-role="collapsible">
                	<h3> Accordion </h3>
			<p> If you would like to learn more information about the use of Accordion you may view an external document with this button. </p>
			<p> <a href="accordion.txt" data-role="button" data-inline="true" rel="external"> View File </a> </p>
	    </div>--%>

          </div>
    	</div>


    	<div data-role="footer">
		<div data-role="navbar">
			<ul>
				<li> <a href="http://miamioh.edu/cec/academics/departments/cse/index.html"> CSE Department </a> </li>
				<li> <a href="https://www.miami.muohio.edu/"> Miami - Home </a> </li>
			</ul>
		</div>
  		    <h5>Copyright @ 2014</h5>
        </div>
    </div>







	<div data-role="page" id="int-dialog">
		<div data-role="header">
          	    <h1> Internal Dialog Window </h1>
			<p> <a href="ISA403_ASMT2P2_Acc.html" data-role="button" data-inline="true" data-icon="arrow-l" data-rel="back"> Go Back </a> </p>
    		</div>

    		<div data-role="content">
			 This is the internal dialog window.
		</div>
	</div>

</body>
</html>
