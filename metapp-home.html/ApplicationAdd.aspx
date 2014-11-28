<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ApplicationAdd.aspx.vb" Inherits="ApplicationAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <form id="form3" runat="server">
    < meta name="viewport" content ="width=device-width, initial-scale=1">
    <title> metApp: Add Application</title>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
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
                                        <asp:TextBox ID="DescriptionTextBox" runat="server" Width="334px" 
                                            Height="100px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 166px">
                                        Operating System</td>
                                    <td class="style1">
                                        <asp:TextBox ID="OSTextBox" runat="server" Width="150px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="OSTextBox" ErrorMessage="Required field."></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 166px">
                                        Version Number</td>
                                    <td class="style1">
                                        <asp:TextBox ID="VersionNumTextBox" runat="server" Width="150px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="VersionNumTextBox" ErrorMessage="Required field."></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 166px">
                                        Price</td>
                                    <td class="style1">
                                        <asp:TextBox ID="PriceTextBox" runat="server" Width="150px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="PriceTextBox" ErrorMessage="Required field."></asp:RequiredFieldValidator>
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
                                    <td class="style1">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:user_dataConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [metApp]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
            <div data-role="footer">
  	            <h6>Copyright @ 2014</h6>
            </div>
        </div>
    </form>
</body>
</html>
