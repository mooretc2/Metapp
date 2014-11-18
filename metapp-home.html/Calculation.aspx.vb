
Partial Class Calculation
    Inherits System.Web.UI.Page



    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ClearButton.Click
        ' Clear the form controls.
        With Me
            .ApplicationTextBox.Text = ""
            .DeveloperNameTextBox.Text = String.Empty
            .OSTextBox.Text = String.Empty
            ' wipe out the above two text box inputs
        End With


    End Sub

    Protected Sub AddApplicationButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AddApplicationButton.Click

        Try
            'we are trying to do the following

            SqlDataSource1.Insert()
            'insert a reservation record

            ConfirmationLabel.Text = "Application Added to Database"
            ConfirmationLabel.Visible = True


            'Dim amountdue As New EventPricing(Integer.Parse(NumberAttendingTextBox.Text), _
            '             EventDropDownList.SelectedIndex)
            '' define an object based on the EventPricing class
            '' business logic tier already defined

            'AmountDueLabel.Text = "Charge to your account: " _
            '    & amountdue.amount.ToString("C")
            ''display amount due on the interface by using the object property called amount

        Catch ex As Exception
            ' if somehing strange happens, then we throw exception, and diplay
            ' internal error message



        End Try


    End Sub
End Class
