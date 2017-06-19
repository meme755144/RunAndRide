<%@ Page Title="足跡紀錄" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
     <h2>歷史足跡</h2>
    <table class="nav-justified">
        <tr>
            <td>時間</td>
            <td>名稱</td>
            <td>路線</td>
            <td>地圖</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTrack" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn查看" runat="server" Text="查看" />
            </td>
        </tr>
    </table>
    <p>Use this area to provide additional information.</p>
</asp:Content>
