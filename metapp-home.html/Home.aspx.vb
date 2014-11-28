Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class Home
    Inherits System.Web.UI.Page



    'Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    '    Dim conn As New SqlConnection
    '    Dim connstr As String

    '    connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
    '    conn.ConnectionString = connstr

    '    Dim cmd As New SqlCommand(" SELECT * FROM [metApp]", conn)
    '    conn.Open()

    '    Dim mydataadapter As New SqlDataAdapter(cmd)
    '    Dim mydataset As New DataSet

    '    mydataadapter.Fill(mydataset)
    '    conn.Close()

    '    ListView1.DataSource = mydataset
    '    ListView1.DataBind()

    'End Sub
End Class
