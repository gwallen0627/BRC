<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forum.aspx.vb" Inherits="BRC.forum" Debug="true" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussion Forum</title>
    <script type="text/javascript" src="jquery-2.1.1.min.js"></script>
    <script>
        $(window).load(function () {$("#txt_in").focus();});
    </script>
</head>
<body>
    <div id="forum_content" runat="server"></div>
    <br />
    <form id="forum_frm" runat="server" method="get">
        <div>
            <input type="text" size="100" id="txt_in" runat="server" /><br />
            <input type="submit" value="Submit" />
        </div>
    </form>
</body>
</html>
