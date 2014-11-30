Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class appdetail
    Inherits System.Web.UI.Page
    Public Property pagename As String
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        pagename = Request.QueryString("name")
        Dim id = Request.QueryString("ID")

        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr
        
        Dim query = "SELECT * FROM [metApp] WHERE ID = '" + id + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet

        mydataadapter.Fill(mydataset)

        Dim name As String = mydataset.Tables(0).Rows(0)(1).ToString()
        Dim developer As String = mydataset.Tables(0).Rows(0)(2).ToString()
        Dim description As String = mydataset.Tables(0).Rows(0)(3).ToString()
        Dim version As String = mydataset.Tables(0).Rows(0)(5).ToString()
        Dim price As String = mydataset.Tables(0).Rows(0)(6).ToString()
        Dim external_url As String = mydataset.Tables(0).Rows(0)(7).ToString()
        conn.Close()

        nameLabel.Text = name
        developerLabel.Text = developer
        descriptionLabel.Text = description

        getAllOSFromName(name)
    End Sub

    Private Sub getAllOSFromName(name As String)
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr

        Dim query = "SELECT External_URL, Operating_System,Price FROM [metApp] WHERE Name = '" + name + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet
        Dim html = ""
        mydataadapter.Fill(mydataset)
        For Each row As DataRow In mydataset.Tables(0).Rows
            Dim URL = row.Item("External_URL")
            Dim OS = row.Item("Operating_System")
            Dim Price = row.Item("Price")
            html += "<span class='os'>" + OS + "<a href='" + URL + "' class='btn' target='_blank'>Buy Now - " + Price + "</a></span><br/>"
        Next row
        otherOS.InnerHtml = html
    End Sub

    Protected Sub backBtn_Click(sender As Object, e As System.EventArgs) Handles backBtn.Click
        Response.Redirect("Home.aspx")
    End Sub
End Class