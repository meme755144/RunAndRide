<%@ Page Title="足跡紀錄" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <body style="background-image:url(/images/trackbackground.png)">
    <br>
     <h2 style="text-align:center">歷史足跡</h2>
    <table class="nav-justified">
        <tr>
            <td>紀錄日期</td>
            <td>平均速度</td>
            <td>距離</td>
            <td>卡路里</td>
            <td>總時間</td>
            <td>獲得獎勵</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDate" runat="server" Text="labe"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSpeed" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDistance" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCarl" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotlTime" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblPrize" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    </body>
</asp:Content>
