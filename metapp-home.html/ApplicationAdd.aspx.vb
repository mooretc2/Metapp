Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class ApplicationAdd
    Inherits System.Web.UI.Page

    
    Protected Sub AddApplicationButton_Click(sender As Object, e As System.EventArgs) Handles AddApplicationButton.Click
        Try
            'insert a application record
            Dim name = ApplicationTextBox.Text
            Dim developer = DeveloperNameTextBox.Text
            Dim description = DescriptionTextBox.Text
            Dim OS = OSTextBox.Text
            Dim version = VersionNumTextBox.Text
            Dim price = PriceTextBox.Text

            Dim conn As New SqlConnection
            Dim connstr As String

            connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
            conn.ConnectionString = connstr

            'Create the SQL Query
            Dim query = "INSERT INTO metApp (Name,Developer,Description,Operating_System,Version,Price) VALUES('" + name + "','" + developer + "','" + description + "','" + OS + "','" + version + "','" + price + "')"

            'Open the Connection and Add In Application
            conn.Open()
            Dim cmd As New SqlCommand
            cmd.Connection = conn
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
            conn.Close()

            ConfirmationLabel.Text = "Application Added to Database"
            ConfirmationLabel.Visible = True
            'Confirm the Addition of the Application

        Catch ex As Exception
            ' if something strange happens, then we throw exception, and display
            ' internal error message

        End Try
    End Sub

    Protected Sub ClearFormButton_Click(sender As Object, e As System.EventArgs) Handles ClearFormButton.Click
        ' Clear the form controls.
        With Me
            .ApplicationTextBox.Text = ""
            .DeveloperNameTextBox.Text = ""
            .OSTextBox.Text = ""
            .VersionNumTextBox.Text = ""
            .PriceTextBox.Text = ""
            .DescriptionTextBox.Text = ""
        End With
    End Sub

    'Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
    '    Dim conn As New SqlConnection
    '    Dim connstr As String

    '    connstr = WebConfigurationManager.ConnectionStrings("user_dataConnectionString").ConnectionString
    '    conn.ConnectionString = connstr

    '    Dim cmd As New SqlCommand("SELECT * FROM [metApp]", conn)

    '    conn.Open()

    '    Dim dataAdapter As New SqlDataAdapter(cmd)
    '    Dim dataSet As New DataSet

    '    dataAdapter.Fill(dataSet)
    '    conn.Close()

    'End Sub
End Class
