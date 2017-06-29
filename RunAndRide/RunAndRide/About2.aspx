<%@ Page Title="足跡紀錄" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    
    <br>
     <h2 style="text-align:center">歷史足跡</h2>
    <p style="text-align:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="id,Id1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" Visible="False" />
                <asp:BoundField DataField="StartTime" HeaderText="紀錄日期" SortExpression="StartTime" >
                </asp:BoundField>
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" Visible="False" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" Visible="False" />
                <asp:BoundField DataField="Id1" HeaderText="Id1" SortExpression="Id1" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="UserId1" HeaderText="UserId1" SortExpression="UserId1" Visible="False" />
                <asp:BoundField DataField="StartTime1" HeaderText="StartTime1" SortExpression="StartTime1" Visible="False" />
                <asp:BoundField DataField="SpendTime" HeaderText="總時間(分)" SortExpression="SpendTime" />
                <asp:BoundField DataField="Distance" HeaderText="總距離(Km)" SortExpression="Distance" />
                <asp:BoundField DataField="Speed" HeaderText="平均速度(km/hr)" SortExpression="Speed" />
                <asp:BoundField DataField="Cal" HeaderText="卡路里" SortExpression="Cal" />
                <asp:BoundField DataField="Reward" HeaderText="獎勵" SortExpression="Reward" />
                <asp:HyperLinkField HeaderText="地圖" NavigateUrl="testGoogle.aspx" Text="查詢" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT TrackHistoryDetail.*, TrackHistory.* FROM TrackHistory INNER JOIN TrackHistoryDetail ON TrackHistory.Id = TrackHistoryDetail.id ORDER BY TrackHistory.StartTime DESC"></asp:SqlDataSource>
    </p>
   
</asp:Content>
