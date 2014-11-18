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
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Calculation.aspx">Add Application</asp:HyperLink>
            <p> 
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" style="margin-top: 0px">
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
                </asp:GridView>
            <p> 
                &nbsp;</div>


    	<div data-role="footer">
  		    <h6>Copyright @ 2014</h6>
        </div>

    </div>
    </form>
</body>
</html>

