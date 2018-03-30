<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="hacker.aspx.vb" Inherits="BRC.hacker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:50%;margin:auto;text-align:center">
    <h1>You've been hacked</h1>
        <img style="display:block;margin:auto; width:300px;height:300px" src="sad-face.png" onclick="window.location='forum.aspx?rst=true'" /><br />
        <div runat="server" id="cookie_info_div"></div>
    </div>
        
    </form>
</body>
</html>
