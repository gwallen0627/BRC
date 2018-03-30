Imports System.Web.Services
Partial Public Class Employees
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        WeekLabel.InnerText = "Hours for this week (ending on " & Format(DateAdd(DateInterval.Day, 7 - Today.DayOfWeek, Today), "MM/dd/yyyy") & ")"
    End Sub
    <WebMethod()> _
    Shared Function UpdateHours(ByVal Login As String, ByVal hrs As String) As String
        Dim weekend As Date = DateAdd(DateInterval.Day, 7 - Today.DayOfWeek, Today)
        Dim hours As Array = hrs.Split("$")
        Dim ls As New ADODB.Connection
        Dim rs As New ADODB.Recordset
        Dim i As Short
        Dim tot As Integer

        UpdateHours = ""
        ls.Open("provider=sqloledb;integrated security=sspi;server=gregory-lenovo\sqlexpress;database=bbre")
        rs.Open("select * from Week where Emp='" & Login & "' and Weekof='" & weekend & "'", ls, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic, ADODB.CommandTypeEnum.adCmdText)
        If Not rs.EOF Then
            For i = 1 To 7
                rs(i).Value = hours(i - 1)
            Next
            rs.Update()
            For i = 1 To 7
                tot += rs(i).Value
                UpdateHours = UpdateHours & rs(i).Value & "$"
            Next
            UpdateHours = UpdateHours & CStr(tot)
            rs.Close()
        End If
        ls.Close()
    End Function
    <WebMethod()> _
    Shared Function Authenticate(ByVal Login As String, ByVal pass As String) As String
        Dim ls As New ADODB.Connection
        Dim rs As New ADODB.Recordset
        Dim weekend As Date = DateAdd(DateInterval.Day, 7 - Today.DayOfWeek, Today)
        Dim i As Short
        Dim tot As Integer

        Authenticate = ""
        ls.Open("provider=sqloledb;integrated security=sspi;server=gregory-lenovo\sqlexpress;database=bbre")
        rs.Open("select * from Employee where Login = '" & Login & "' and Password = '" & pass & "'", ls)
        If Not rs.EOF Then Authenticate = rs("LastName").Value & "," & rs("FirstName").Value & "|"
        rs.Close()
        If Authenticate <> "" Then
            rs.Open("select * from Week where Emp='" & Login & "' and Weekof='" & weekend & "'", ls)
            If rs.EOF Then
                rs.Close()
                rs.Open("select * from Week where 1=2", ls, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic, ADODB.CommandTypeEnum.adCmdText)
                rs.AddNew()
                rs("Emp").Value = Login
                For i = 1 To 7
                    rs(i).Value = 0
                Next
                rs("Weekof").Value = weekend
                rs.Update()
            End If
            For i = 1 To 7
                tot += rs(i).Value
                Authenticate = Authenticate & rs(i).Value & "$"
            Next
            Authenticate = Authenticate & CStr(tot)
            rs.Close()
        End If
        ls.Close()
    End Function

End Class