<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employees.aspx.vb" Inherits="BRC.Employees" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Portal</title>
    <script type="text/javascript" src="jquery-1.10.2.js"></script>
    <script type="text/JavaScript">
        $(window).load(function() {
            $("#LoginBut").click(function() {
                PageMethods.Authenticate($("#UsernameTB").val(), $("#PasswordTB").val(), function(result) {
                    if (result == "") {
                        alert("Invalid Login");
                    } else {
                        var info = result.split("|");
                        var hrs = info[1].split("$");
                        $("#CurrentEmpLabel").prop('innerText', 'Logged in as ' + info[0]);
                        $("#MondayTB").val(hrs[0]);
                        $("#TuesdayTB").val(hrs[1]);
                        $("#WednesdayTB").val(hrs[2]);
                        $("#ThursdayTB").val(hrs[3]);
                        $("#FridayTB").val(hrs[4]);
                        $("#SaturdayTB").val(hrs[5]);
                        $("#SundayTB").val(hrs[6]);
                        $("#TotalHoursTB").val(hrs[7]);
                        $("#LoginTable").css('display', 'none');
                        $("#HoursTable").css('display', 'inherit');
                    }
                });

            });
            $("#UpdateHoursBut").click(function() {
                var hrs = $("#MondayTB").val() + "$" + $("#TuesdayTB").val() + "$" +
                          $("#WednesdayTB").val() + "$" + $("#ThursdayTB").val() + "$" +
                          $("#FridayTB").val() + "$" + $("#SaturdayTB").val() + "$" +
                          $("#SundayTB").val();
                PageMethods.UpdateHours($("#UsernameTB").val(), hrs, function(result) {
                    if (result == "") {
                        alert("Problem updating hours");
                    } else {
                        var hrs = result.split("$");
                        $("#MondayTB").val(hrs[0]);
                        $("#TuesdayTB").val(hrs[1]);
                        $("#WednesdayTB").val(hrs[2]);
                        $("#ThursdayTB").val(hrs[3]);
                        $("#FridayTB").val(hrs[4]);
                        $("#SaturdayTB").val(hrs[5]);
                        $("#SundayTB").val(hrs[6]);
                        $("#TotalHoursTB").val(hrs[7]);
                        alert("Hours Updated");
                    };
                });
            });
        });
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table runat="server" id="LoginTable">
            <tr>
                <td colspan="3">
                    <p>
                        Employee Login</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Username</p>
                </td>
                <td>
                    <p>
                        Password</p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="UsernameTB" />
                </td>
                <td>
                    <input type="password" id="PasswordTB" />
                </td>
                <td>
                    <input type="button" id="LoginBut" runat="server" value="Login" />
                </td>
            </tr>
        </table>
        <table runat="server" id="HoursTable" style="display:none">
        <tr>
                <td><p id="CurrentEmpLabel">Logged In As:</p></td>
            </tr>
            <tr>
                <td colspan="2">
                    <p id="WeekLabel" runat="server" >
                        Hours this week</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Monday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="MondayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Tuesday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="TuesdayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Wednesday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="WednesdayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Thursday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="ThursdayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Friday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="FridayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Saturday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="SaturdayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>
                        Sunday</p>
                </td>
                <td>
                    <input type="text" runat="server" id="SundayTB" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p style=" font-weight:bold ">
                        TOTAL</p>
                </td>
                <td>
                    <input type="text" runat="server" id="TotalHoursTB" readonly="true" style="width: 30px" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" id="UpdateHoursBut" runat="server" value="Update Hours" />
                </td>
            </tr>
        </table>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
    </asp:ScriptManager>
    </form>
</body>
</html>
