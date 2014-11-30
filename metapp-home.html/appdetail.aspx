<%@ Page Language="VB" AutoEventWireup="false" CodeFile="appdetail.aspx.vb" Inherits="appdetail" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content ="width=device-width, initial-scale=1"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <title> metApp : <% Response.Write(pagename)%> Details </title>
    <link rel="Stylesheet" href="StyleSheet.css" />
    <script src="http://code.jquery.com/jquery-1.5.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<form id="form1" runat="server">
<header>
    <span class="brand"> <% Response.Write(pagename)%> Details </span>
    <span class="nav">
        <asp:Button ID="backBtn" runat="server" Text="Back"/>
    </span>
</header>
<div class="container">
    <div class="content">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
            SelectCommand="SELECT * FROM [metApp] WHERE (ID = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="appName">
            <asp:Label ID="nameLabel" runat="server" Font-Size="X-Large"></asp:Label>
        </div>
        <div class="developer">
            <asp:Label ID="developerLabel" runat="server" Font-Size="Small"></asp:Label>
        </div>
        <div class="description">
            <asp:Label ID="descriptionLabel" runat="server"></asp:Label>
        </div>
        <div id="otherOS" runat="server">
        </div>
    </div>
    <footer>
  	    <h6>Copyright @ 2014</h6>
    </footer>
</form>
</body>
</html>
