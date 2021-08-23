<%@ page language="VB" autoeventwireup="false" inherits="Reports_SessionTerminada, App_Web_jver2jhs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e- Route Web</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="images/RouteLogo.jpg" />
            <br />
            <br />
            <asp:Label ID="lbSesionT" runat="server" Text="Sesion Terminada" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <a href="Login.aspx" target="_top">
                <asp:Label ID="lblRegresar" runat="server" Text="Menu"></asp:Label></a>
        </div>
    </form>
</body>
</html>
