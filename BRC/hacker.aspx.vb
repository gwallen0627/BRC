Public Class hacker
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cookie_info_div.InnerHtml = Request.QueryString("cookies")
    End Sub

End Class