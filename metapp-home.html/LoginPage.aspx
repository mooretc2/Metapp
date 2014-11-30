<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginPage.aspx.vb" Inherits="LoginPage" %>
 
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content ="width=device-width, initial-scale=1"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <title> metApp: Login Page </title>
    <link rel="Stylesheet" href="StyleSheet.css" />
    <script src="http://code.jquery.com/jquery-1.5.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<form id="form3" runat="server">
<header>
    <span class="brand">metApp</span>
        <span class="nav">
            <asp:Button ID="backBtn" runat="server" Text="Back"/>
        </span>
</header>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
    SelectCommand="SELECT [UserName], [Password], [Type] FROM [metApp_Users]">
</asp:SqlDataSource>
<div class="container">
    <div class="content">
        <div class="loginForm">
            <asp:Label ID="Label1" class="loginLabel" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="UserNameTextBox" runat="server" Width="137px"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" class="loginLabel" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="142px"></asp:TextBox><br />
            <asp:Button ID="LoginButton" class="loginBtn" runat="server" Text="Login" />
        </div>
        <div id="alertDiv" runat="server"></div>
    </div>
</div>
<footer>
  	<h6>Copyright @ 2014</h6>
</footer>
</form>
</body>
</html>


