Imports System.Web.Services
Imports System.Net

Partial Public Class askus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    <WebMethod()> _
    Public Shared Function SendEmail(i As Dictionary(Of String, String)) As String
        Dim smtp As New Mail.SmtpClient
        Dim message As New Mail.MailMessage()
        message.From = New Mail.MailAddress("gregorywayneallen@gmail.com")
        message.To.Add("info@bobbysbre.com,rcallen@bobbysbre.com")
        message.Subject = "I'm interested in services!"
        message.Body = i.Item("name") & i.Item("email") & i.Item("phone") & i.Item("compname") & i.Item("industry") & i.Item("empnum") & i.Item("details")
        SendEmail = "Submitted!"
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential("gregorywayneallen@gmail.com", "Chelsea12")
        smtp.Port = 587
        smtp.Host = "smtp.gmail.com"
        smtp.EnableSsl = True
        Try
            smtp.Send(message)
        Catch ex As Exception
            SendEmail = ex.Message

        End Try
    End Function
End Class