<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content ="width=device-width, initial-scale=1"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <title> metApp: Home Page </title>
    <link rel="Stylesheet" href="StyleSheet.css" />
    <script src="http://code.jquery.com/jquery-1.5.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<form id="form1" runat="server">
<header>
    <span class="brand">metApp</span>
    <span class="nav">
        <asp:Button ID="loginBtn" runat="server" Text="Login"/>
        <asp:Button ID="applicationAdd" runat="server" Text="Add Application" Visible="false" />
        <asp:Button ID="logoutBtn" runat="server" Text="Logout" Visible="false" />
    </span>
</header>
<div class="container">
    <div class="content">
        <h1>Welcome to metApp!</h1>
        <p>metApp is the application about applications. </p>
	    <p>This web application is designed to help users & developer efficiently find out more about the apps their curious about.</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [metApp]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" style="margin-top: 0px" DataKeyNames="ID">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="appdetail.aspx?ID={0}" Text="Information" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Developer" HeaderText="Developer" 
                    SortExpression="Developer" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </div>
    <footer>
  		<h6>Copyright @ 2014</h6>
    </footer>
</div>
</form>
</body>
</html>

