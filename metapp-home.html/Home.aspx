<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

 
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content ="width=device-width, initial-scale=1"/>
    <title> metApp: Home Page </title>

    <script src="http://code.jquery.com/jquery-1.5.min.js"></script>
    <script type="text/javascript">
    </script>

    <form id="form1" runat="server">
</head>

<body class="container">
<header>
    <h1> metApp </h1>
</header>
<div class="container">
    <div class="content">
        <h1>Welcome to metApp!</h1>
        <p>metApp is the application about applications. </p>
	    <p>This web application is designed to help users & developer efficiently find out more about the apps their curious about.</p>
        <p> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [ID], [Name], [Developer], [Description], [Operating_System], [Version], [Price], [External_URL] FROM [metApp]"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" style="margin-top: 0px">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:HyperLink ID="DetailsLink" runat="server" Text="Info"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Developer" HeaderText="Developer" 
                    SortExpression="Developer" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Operating_System" HeaderText="Operating_System" 
                    SortExpression="Operating_System" />
                <asp:BoundField DataField="Version" HeaderText="Version" 
                    SortExpression="Version" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="External_URL" HeaderText="External_URL" 
                    SortExpression="External_URL" />
            </Columns>
        </asp:GridView>
        <div class="nav">
            <asp:Button ID="loginBtn" runat="server" Text="Login"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="applicationAdd" runat="server" Text="Add Application" Visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logoutBtn" runat="server" Text="Logout" Visible="false" />&nbsp;&nbsp;&nbsp;
        </div>
    </div>
    <footer>
  		<h6>Copyright @ 2014</h6>
    </footer>
</div>
</form>
</body>
</html>

