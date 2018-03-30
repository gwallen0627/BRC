<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="askus.aspx.vb" Inherits="BRC.askus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" src="jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="amue_ajax.js"></script>
    <script type="text/JavaScript">
        $(window).load(function () {
            $("#em_frm").submit(function (e) { e.preventDefault(); PageMethods.SendEmail(dodata('em_frm'), function (r) { alert(r) }) })
        });
    </script>
    <style>
        .sbut
        {
            background-color: #DBDBDB;
        }

            .sbut:hover
            {
                background-color: #D1D1D1;
            }
    </style>
</head>
<body>
    <div style="margin: auto; width: 75%">
        <table style="margin: auto; width: 50%">
            <tr>
                <td colspan="2">
                    <img alt="mtns" src="header.jpg" />
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; background-image: url('pagebackground.jpg')" colspan="2">
                    <table style="margin: auto">
                        <tr>
                            <td>
                                <input type="button" value="WHO WE ARE" onclick="parent.location = 'consulting.aspx'" />
                                <input type="button" value="ASK US" onclick="location.reload()" />
                                <input type="button" value="CUSTOMERS" />
                                <input type="button" value="CONTACT" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <form id="em_frm">
            <table style="margin: auto">
                <tr>
                    <td colspan="3">
                        <p>REQUEST A QUOTE!</p>
                        <div style="width: 500px; background-color: #EAFEFF;">
                            <p>Personal Information</p>
                            <p>Name: </p>
                            <p>
                                <input type="text" id="Name" name="name" />
                            </p>
                            <p>Email: </p>
                            <p>
                                <input type="text" id="Email" name="email" />
                            </p>
                            <p>Phone: </p>
                            <p>
                                <input type="text" id="Phone" name="phone" />
                            </p>
                            <p>Company Information</p>
                            <table>
                                <tr>
                                    <td>
                                        <p style="text-align: center; vertical-align: top">
                                            Your Organization:<br />
                                            <input type="text" id="compname" name="compname" /><br />
                                            <br />
                                            Industry:<br />
                                            <select id="industry" name="industry">
                                                <option>- Select -</option>
                                                <option>Consumer Discretionary</option>
                                                <option>Energy</option>
                                                <option>Financial Services</option>
                                                <option>Healthcare</option>
                                                <option>Industrials</option>
                                                <option>Information Technology</option>
                                                <option>Non-Profit</option>
                                                <option>Telecommunications</option>
                                                <option>Utilities</option>
                                                <option>Food Industry</option>
                                                <option>Construction</option>
                                            </select><br />
                                            <br />
                                            Number of Employees:<br />
                                            <select id="empnum" name="empnum">
                                                <option>- Select -</option>
                                                <option>1-100</option>
                                                <option>100-500</option>
                                                <option>500-1000</option>
                                                <option>More than 1000</option>
                                            </select>
                                        </p>
                                    </td>
                                    <td>
                                        <p style="vertical-align: top">
                                            Project Details:<br />
                                            <textarea id="details" rows="8" cols="35" name="details"></textarea>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" class="sbut" value="Submit Request" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <table style="margin: auto">
        <tr>
            <td>
                <p style="font-family: Tunga"><a href="consulting.aspx">WHO WE ARE</a> | CUSTOMERS | CONTACT | CAREERS | <a href="askus.aspx">Get a Quote</a> | <a href="http://50.181.15.27:100">Squarebooks</a> | © 2014 BBRE Consulting, LLC</p>
            </td>
        </tr>
    </table>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
        </asp:ScriptManager>
    </form>
</body>
</html>
