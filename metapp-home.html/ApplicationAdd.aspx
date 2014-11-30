<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ApplicationAdd.aspx.vb" Inherits="ApplicationAdd" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content ="width=device-width, initial-scale=1"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <title> metApp: Add Application </title>
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
<div class="container">
    <div class="content">
        <table style="height: 422px; width: 635px">
            <tr>
                <td style="width: 166px">
                    &nbsp;</td>
                <td class="style2">
                    Application Information</td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Application Name</td>
                <td class="style1">
                    <asp:TextBox ID="ApplicationTextBox" runat="server" Height="24px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Developer</td>
                <td class="style1">
                    <asp:TextBox ID="DeveloperNameTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Description</td>
                <td class="style1">
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Width="334px" 
                        Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Operating System</td>
                <td class="style1">
                    <asp:TextBox ID="OSTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Version Number</td>
                <td class="style1">
                    <asp:TextBox ID="VersionNumTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    Price</td>
                <td class="style1">
                    <asp:TextBox ID="PriceTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    External URL</td>
                <td class="style1">
                    <asp:TextBox ID="ExternalURLTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    <asp:Button ID="AddApplicationButton" runat="server" Text="Add Application" 
                        Width="150px" />
                </td>
                <td class="style1">
                    <asp:Label ID="ConfirmationLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">
                    <asp:Button ID="ClearFormButton" runat="server" Text="Clear" Width="150px" />
                </td>
            </tr>
        </table>
    </div>
</div>
<footer>
  	<h6>Copyright @ 2014</h6>
</footer>
</form>
</body>
</html>