<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="Web_DangKy" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (recaptcha.IsValid)
        {
            lblResult.Text = "Bạn đã gõ đúng mã bảo vệ";
            lblResult.ForeColor = System.Drawing.Color.Green;

        }
        else
        {
            lblResult.Text = "Bạn đã gõ sai mã bảo vệ";
            lblResult.ForeColor = System.Drawing.Color.Red;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASP.NET VIETNAM - CAPTCHA DEMO</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblResult" runat="server" />
        <recaptcha:RecaptchaControl ID="recaptcha" runat="server" PublicKey="6Lcg5b4SAAAAADLyAsOHH-l1Gwr-UUbbjFYl5fQL"
            PrivateKey="6Lcg5b4SAAAAAE7iFuB3flFexLmLyXM73l0OMLv0" />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Test" OnClick="btnSubmit_Click" />
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>