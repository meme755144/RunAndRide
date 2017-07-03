<%@ Page Title="足跡紀錄" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    
    <br>
     <h2 style="text-align:center">歷史足跡</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
            <asp:BoundField DataField="SpendTime" HeaderText="SpendTime" SortExpression="SpendTime" />
            <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
            <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
            <asp:BoundField DataField="Cal" HeaderText="Cal" SortExpression="Cal" />
            <asp:BoundField DataField="Reward" HeaderText="Reward" SortExpression="Reward" />
            <asp:HyperLinkField HeaderText="map" NavigateUrl="https://www.google.com.tw/maps/search/google+map+%E7%B9%AA%E8%A3%BD%E8%B7%AF%E7%B7%9A+%E5%BA%A7%E6%A8%99/@22.5980097,120.3149348,13z/data=!3m1!4b1" Text="查詢" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
   <br>
    <div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [StartTime], [SpendTime], [Distance], [Speed], [Cal], [Reward] FROM [TrackHistory] ORDER BY [StartTime] DESC"></asp:SqlDataSource>
        
    </div>

    
   </asp:Content>
