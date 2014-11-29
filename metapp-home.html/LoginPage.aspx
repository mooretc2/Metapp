<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginPage.aspx.vb" Inherits="LoginPage" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content ="width=device-width, initial-scale=1">
    <title> metApp: Login </title>

    <script src="http://code.jquery.com/jquery-1.5.min.js"></script>
    <script type="text/javascript">
    </script>
    <form id="form3" runat="server">
</head>
<body class="container">

        <div data-role="page">

            <div data-role="header">
              <h1> metApp </h1>
             
    	    </div>

            <div>
                <p> 
                        <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="UserNameTextBox" runat="server" Width="137px"></asp:TextBox>
                </p>
                <p> 
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" 
                            Width="142px"></asp:TextBox>
                </p>
                <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="LoginButton" runat="server" Text="Login" />
                </p>
                <div id="alertDiv" runat="server"></div>
                <p> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
                            SelectCommand="SELECT [UserName], [Password], [Type] FROM [metApp_Users]">
                        </asp:SqlDataSource>
                </p>
                <p> 
                        &nbsp;</p>
            
            </div>
             

        <div>
            <div data-role="footer">
  	            <h6>Copyright @ 2014</h6>
            </div>
        </div>
    </form>
</body>
</html>





