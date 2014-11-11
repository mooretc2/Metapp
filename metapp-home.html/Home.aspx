<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
   
    <form id="form1" runat="server">
    
   
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
            <p> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Name], [Developer], [Description], [Operating_System], [Version], [Price], [External_URL] FROM [metApp]"></asp:SqlDataSource>
            </p>
            <p> 
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" 
                    Width="125px">
                    <Fields>
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
                    </Fields>
                </asp:DetailsView>
            <p> 
                &nbsp;<p> 
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333">
                    <EditItemTemplate>
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Developer:
                        <asp:TextBox ID="DeveloperTextBox" runat="server" 
                            Text='<%# Bind("Developer") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:TextBox ID="Operating_SystemTextBox" runat="server" 
                            Text='<%# Bind("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:TextBox ID="VersionTextBox" runat="server" Text='<%# Bind("Version") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        External_URL:
                        <asp:TextBox ID="External_URLTextBox" runat="server" 
                            Text='<%# Bind("External_URL") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Developer:
                        <asp:TextBox ID="DeveloperTextBox" runat="server" 
                            Text='<%# Bind("Developer") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:TextBox ID="Operating_SystemTextBox" runat="server" 
                            Text='<%# Bind("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:TextBox ID="VersionTextBox" runat="server" Text='<%# Bind("Version") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        External_URL:
                        <asp:TextBox ID="External_URLTextBox" runat="server" 
                            Text='<%# Bind("External_URL") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Developer:
                        <asp:Label ID="DeveloperLabel" runat="server" Text='<%# Bind("Developer") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:Label ID="Operating_SystemLabel" runat="server" 
                            Text='<%# Bind("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:Label ID="VersionLabel" runat="server" Text='<%# Bind("Version") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        External_URL:
                        <asp:Label ID="External_URLLabel" runat="server" 
                            Text='<%# Bind("External_URL") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:FormView>
            <p> 
                &nbsp;<p> 
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
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
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            <p> 
                &nbsp;<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Developer:
                        <asp:Label ID="DeveloperLabel" runat="server" Text='<%# Eval("Developer") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Eval("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:Label ID="Operating_SystemLabel" runat="server" 
                            Text='<%# Eval("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:Label ID="VersionLabel" runat="server" Text='<%# Eval("Version") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        External_URL:
                        <asp:Label ID="External_URLLabel" runat="server" 
                            Text='<%# Eval("External_URL") %>' />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Developer:
                        <asp:TextBox ID="DeveloperTextBox" runat="server" 
                            Text='<%# Bind("Developer") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:TextBox ID="Operating_SystemTextBox" runat="server" 
                            Text='<%# Bind("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:TextBox ID="VersionTextBox" runat="server" Text='<%# Bind("Version") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        External_URL:
                        <asp:TextBox ID="External_URLTextBox" runat="server" 
                            Text='<%# Bind("External_URL") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr ID="itemPlaceholderContainer" runat="server">
                        <td ID="itemPlaceholder" runat="server">
                        </td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Developer:
                        <asp:TextBox ID="DeveloperTextBox" runat="server" 
                            Text='<%# Bind("Developer") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:TextBox ID="Operating_SystemTextBox" runat="server" 
                            Text='<%# Bind("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:TextBox ID="VersionTextBox" runat="server" Text='<%# Bind("Version") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        External_URL:
                        <asp:TextBox ID="External_URLTextBox" runat="server" 
                            Text='<%# Bind("External_URL") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Developer:
                        <asp:Label ID="DeveloperLabel" runat="server" Text='<%# Eval("Developer") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Eval("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:Label ID="Operating_SystemLabel" runat="server" 
                            Text='<%# Eval("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:Label ID="VersionLabel" runat="server" Text='<%# Eval("Version") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        External_URL:
                        <asp:Label ID="External_URLLabel" runat="server" 
                            Text='<%# Eval("External_URL") %>' />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr ID="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" 
                        style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Developer:
                        <asp:Label ID="DeveloperLabel" runat="server" Text='<%# Eval("Developer") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Eval("Description") %>' />
                        <br />
                        Operating_System:
                        <asp:Label ID="Operating_SystemLabel" runat="server" 
                            Text='<%# Eval("Operating_System") %>' />
                        <br />
                        Version:
                        <asp:Label ID="VersionLabel" runat="server" Text='<%# Eval("Version") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        External_URL:
                        <asp:Label ID="External_URLLabel" runat="server" 
                            Text='<%# Eval("External_URL") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <p> 
                &nbsp;<p> 
                &nbsp;</p>
		
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
    </form>
</body>
</html>

