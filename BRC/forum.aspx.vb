Imports System.IO

Public Class forum
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        forum_content.InnerHtml = ""
        Dim path = "C:\inetpub\wwwroot\brc\brc\comments.txt"
        Dim txt = Request.QueryString("txt_in")
        Dim rst = Request.QueryString("rst")
        If rst <> Nothing Then
            Dim thing = File.Create(path)
            thing.Close()
        Else
            If txt <> Nothing Then
                Dim sw = New StreamWriter(path, True)
                sw.WriteLine(txt)
                sw.Close()
            End If
            Dim sr = New StreamReader("C:\inetpub\wwwroot\brc\brc\comments.txt")
            Dim mu = ""
            Do While sr.Peek >= 0
                mu += sr.ReadLine & "<br />"
            Loop
            forum_content.InnerHtml = mu
            txt_in.Value = ""
            sr.Close()
        End If
    End Sub

End Class