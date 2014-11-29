
Partial Class appdetail
    Inherits System.Web.UI.Page
    Public Property name As String
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        name = Request.QueryString("name")

    End Sub

End Class
