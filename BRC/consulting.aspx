<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="consulting.aspx.vb" Inherits="BRC.consulting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Welcome to BBRE Consulting!</title>
    <script type="text/javascript" src="jquery-2.1.1.min.js"></script>
    <script type="text/JavaScript">$(window).load(function () { $('#info').css('zIndex', 3000).animate({ left: '100px', opacity: '1' }, 1000) })</script>
</head>
<body>
    <div style="margin: auto; width: 75%">
        <table style="margin: auto">
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
                                <input type="button" value="WHO WE ARE" onclick="location.reload()" />
                                <input type="button" value="ASK US" onclick="parent.location = 'askus.aspx'" />
                                <input type="button" value="CUSTOMERS" />
                                <input type="button" value="CONTACT" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="margin: auto">
            <tr>
                <td>
                    <img alt="windowcode" src="windowcode.jpg" width="554" height="560" />
                </td>
                <td>
                    <table style="margin: auto; width: 300px">
                        <tr>
                            <td>
                                <p style="text-align: center; font-family: Arial; color: red; font-size: larger">
                                    THANKS FOR VISITING!
                                </p>
                                <p style="text-align: center;">
                                    BBRE Consulting is a software 
                                startup based in Harpers Ferry, WV that specializes in building remittance and acknowledgement processing tools.
                                For over 25 years, founder Bob Allen has been dedicated to creating agile and innovative
                                applications to meet client-specific needs.
                                </p>
                                <p style="text-align: center;">
                                    Following in that tradition, at BBRE, the key word is still DEDICATION. We focus
                                on delivering the most comprehensive and user-friendly solutions that simplify essential
                                business tasks, while bringing to light new possibilities by adapting to emerging
                                technologies.
                                </p>
                                <p style="text-align: center;">
                                    Continued support is part of the BBRE customer experience. No other company will
                                work harder to maintain and improve your custom application, and to give your organization
                                the solutions it needs on time, and at the right cost.
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="margin: auto">
            <tr>
                <td>
                    <p style="font-family: Tunga"><a href="consulting.aspx">WHO WE ARE</a> | <a href="forum.aspx">FORUM</a> | CUSTOMERS | CONTACT | CAREERS | <a href="askus.aspx">Get a Quote</a> | <a href="http://50.181.15.27:100">Squarebooks</a> | © 2014 BBRE Consulting, LLC</p>
                </td>

            </tr>
        </table>
    </div>

    <div id="info" style="position: absolute; background-color: Aqua; top: 60px; left: 0; width: 194px; opacity: 0">
        <p>CALL US!</p>
        <img alt="number" src="number.gif" />
    </div>
</body>
</html>
