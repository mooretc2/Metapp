Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class LoginPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'Check for if user is logged in
    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As System.EventArgs) Handles LoginButton.Click
        'Try Login Procedure
        Try
            'Get Values from textboxes
            Dim username = UserNameTextBox.Text
            Dim password = PasswordTextBox.Text
            'Get the value of the userCount / Password Count / Is this a valid User / Password?
            Dim log = checkUser(username, password)

            If log = 1 Then
                login_user(username, password)
            ElseIf log = 2 Then
                alert("Invalid Username")
            ElseIf log = 3 Then
                alert("Invalid Password")
            Else
                alert("Something Bad Happened")
            End If
        Catch ex As Exception
            ' if something strange happens, then we throw exception, and display
            ' internal error message

            alert(ex.Message)
        End Try

    End Sub

    Private Sub alert(message As String)
        'Build Dynamic alert Message for the Javascript
        Dim alertMessage = "<script> alert('" + message + "');</script>"
        'Display Alert Message
        alertDiv.InnerHtml = alertMessage

    End Sub

    Private Sub login_user(username As String, password As String)
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr
        'Get all the values for that users row
        Dim query = "SELECT * FROM metApp_Users WHERE username = '" + username + "' AND password = '" + password + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet

        mydataadapter.Fill(mydataset)
        'Get the Type to distinguish the Admin(2) / Moderator(1) / User permission level(0)
        Dim type As String = mydataset.Tables(0).Rows(0)(3).ToString()
        conn.Close()

        Dim loggedIn As New HttpCookie("logged_in")
        loggedIn.Value = "yes"
        loggedIn.Expires = DateTime.Now.AddDays(30)
        Response.Cookies.Add(loggedIn)

        Dim typeCookie As New HttpCookie("type")
        typeCookie.Value = type
        typeCookie.Expires = DateTime.Now.AddDays(30)
        Response.Cookies.Add(typeCookie)

        Response.Redirect("./Home.aspx", True)
    End Sub

    Private Function checkUser(username As String, password As String) As Integer
        'Set the initial count of the users to 0
        Dim log = 0
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr


        'Open the Connection Count the users
        'Create the SQL Query
        Dim query = "SELECT COUNT(Username) AS UserCount FROM metApp_Users WHERE username = '" + username + "' AND password = '" + password + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet
        'Fill dataset with data adapter built on sqlCmd
        mydataadapter.Fill(mydataset)

        conn.Close()
        'Grab the First Table, First Row, First Columns' value and parse as an integer
        Dim count As Integer = Integer.Parse(mydataset.Tables(0).Rows(0)(0).ToString())

        If count = 1 Then
            log = 1 'There is one user with those credentials YAY!
        Else
            Dim validLogin = check_validLogin(username) 'Check if the user name is valid, store as a boolean
            If validLogin Then
                log = 2 'Invalid Username
            Else
                Dim validPass = check_validPassword(username, password) 'Check if the password is valid, store as a boolean
                If Not validPass Then
                    log = 3 'Invalid Password
                End If
            End If
        End If

        Return log

    End Function


    Private Function check_validLogin(username As String) As Boolean
        Dim valid = False
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr


        'Open the Connection Count the users
        'Create the SQL Query
        Dim query = "SELECT COUNT(Username) AS UserCount FROM metApp_Users WHERE username = '" + username + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet

        mydataadapter.Fill(mydataset)

        conn.Close()

        'Grab the First Table, First Row, First Columns' value and parse as an integer
        Dim count As Integer = Integer.Parse(mydataset.Tables(0).Rows(0)(0).ToString())
        If count = 0 Then
            valid = True
        End If

        Return valid
    End Function

    Private Function check_validPassword(username As String, password As String) As Boolean
        Dim valid = False
        Dim conn As New SqlConnection
        Dim connstr As String

        connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
        conn.ConnectionString = connstr


        'Open the Connection Count the users with that password
        'Create the SQL Query
        Dim query = "SELECT COUNT(Password) AS UserCount FROM metApp_Users WHERE username = '" + username + "' AND password = '" + password + "';"

        Dim sqlCmd As New SqlCommand(query, conn)
        conn.Open()
        Dim mydataadapter As New SqlDataAdapter(sqlCmd)
        Dim mydataset As New DataSet

        mydataadapter.Fill(mydataset)

        conn.Close()

        'Grab the First Table, First Row, First Columns' value and parse as an integer
        Dim count As Integer = Integer.Parse(mydataset.Tables(0).Rows(0)(0).ToString())
        If count = 0 Then
            valid = True
        End If

        Return valid
    End Function

    Protected Sub backBtn_Click(sender As Object, e As System.EventArgs) Handles backBtn.Click
        Response.Redirect("./Home.aspx")
    End Sub
End Class
