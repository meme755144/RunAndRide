<%@ Page Title="足跡紀錄" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    
    <br>
     <h2 style="text-align:center">歷史足跡</h2>
    <p style="text-align:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" Visible="False" />
                <asp:BoundField DataField="StartTime" HeaderText="紀錄日期" SortExpression="StartTime" >
                </asp:BoundField>
                <asp:BoundField DataField="SpendTime" HeaderText="總時間" SortExpression="SpendTime" />
                <asp:BoundField DataField="Distance" HeaderText="總距離" SortExpression="Distance" />
                <asp:BoundField DataField="Speed" HeaderText="平均速度" SortExpression="Speed" />
                <asp:BoundField DataField="Cal" HeaderText="卡路里" SortExpression="Cal" />
                <asp:BoundField DataField="Reward" HeaderText="獎勵" SortExpression="Reward" />
                <asp:HyperLinkField DataNavigateUrlFields="StartTime" HeaderText="地圖" Text="觀看" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TrackHistory] ORDER BY [StartTime] DESC"></asp:SqlDataSource>
    </p>
   
</asp:Content>
