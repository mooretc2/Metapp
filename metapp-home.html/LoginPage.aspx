<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginPage.aspx.vb" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <form id="form3" runat="server">
    < meta name="viewport" content ="width=device-width, initial-scale=1">
    <title> metApp: Login </title>

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

            <div>
                <p> 
                        <asp:Login ID="Login1" runat="server">
                        </asp:Login>
                </p>
            </div>
             

        <div>
            <div data-role="footer">
  	            <h6>Copyright @ 2014</h6>
            </div>
        </div>
    </form>
</body>
</html>





