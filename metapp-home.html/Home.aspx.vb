Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class Home
    Inherits System.Web.UI.Page

    Private Function Get_Apps() As DataSet
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr

        Dim cmd As New SqlCommand(" SELECT * FROM [metApp]", conn)
        conn.Open()

        Dim mydataadapter As New SqlDataAdapter(cmd)
        Dim mydataset As New DataSet

        mydataadapter.Fill(mydataset)

        conn.Close()

        Return mydataset
    End Function

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim dataset = Get_Apps()
        checkLogin()
    End Sub

    Protected Sub checkLogin()
        Dim loggedIn As String = ""
        If Request.Cookies("logged_in") IsNot Nothing Then
            loggedIn = "yes"
        Else
            loggedIn = "no"
        End If

        Dim type As String = "0"
        If Request.Cookies("type") IsNot Nothing Then
            type = Request.Cookies("type").Value.ToString()
        Else
            type = "0"
        End If

        applicationAdd.Visible = False
        'check for logged in status
        If loggedIn = "yes" Then
            'check for user account type
            If type = "2" Then
                applicationAdd.Visible = True
            ElseIf type = "1" Then
                applicationAdd.Enabled = True
                applicationAdd.Visible = True
            Else
                applicationAdd.Visible = False
            End If
            'hide the login
            loginBtn.Visible = False
            'show the logout
            logoutBtn.Visible = True
        Else
            'show the login
            loginBtn.Visible = True
            'hide the logout
            logoutBtn.Visible = False
        End If
    End Sub

    Protected Sub logoutButton_Click(sender As Object, e As System.EventArgs) Handles logoutBtn.Click
        Request.Cookies.Clear()
        'method to check login  / show / hide buttons
        checkLogin()
    End Sub

    Protected Sub loginBtn_Click(sender As Object, e As System.EventArgs) Handles loginBtn.Click
        Response.Redirect("LoginPage.aspx", True)
    End Sub

    Protected Sub applicationAdd_Click(sender As Object, e As System.EventArgs) Handles applicationAdd.Click
        Response.Redirect("ApplicationAdd.aspx", True)
    End Sub
End Class
