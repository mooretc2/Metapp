<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Calculation.aspx.vb" Inherits="Calculation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 278px;
        }
        .style2
        {
            width: 278px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body>
  
    <form id="form2" runat="server">
    <div>
    </div>
    <table style="height: 422px; width: 635px">
        <tr>
            <td style="width: 166px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Back</asp:HyperLink>
            </td>
            <td class="style2">
                Application Information</td>
        </tr>
        <tr>
            <td style="width: 166px">
                Application Name</td>
            <td class="style1">
                <asp:TextBox ID="ApplicationTextBox" runat="server" Height="24px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DeveloperValidator" 
                    runat="server" ControlToValidate="ApplicationTextBox" 
                    ErrorMessage="Required field."></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="DescriptionTextbox" runat="server" Width="334px" 
                    Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                Operating System</td>
            <td class="style1">
                <asp:TextBox ID="OSTextBox" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="OSRequiredFieldValidator" runat="server" 
                    ControlToValidate="OSTextBox" ErrorMessage="Required field."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                Version Number</td>
            <td class="style1">
                <asp:TextBox ID="VersionNumberTextBox" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="VersionRequiredFieldValidator" runat="server" 
                    ControlToValidate="VersionNumberTextBox" ErrorMessage="Required field."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                Price</td>
            <td class="style1">
                <asp:TextBox ID="PriceValueTextBox0" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PriceRequiredFieldValidator0" runat="server" 
                    ControlToValidate="PriceValueTextBox0" ErrorMessage="Required field."></asp:RequiredFieldValidator>
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
                <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="150px" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [Name], [Developer], [Description], [Operating_System], [Version], [Price], [External_URL] FROM [metApp]"></asp:SqlDataSource>
    </form>
  
</body>
</html>
