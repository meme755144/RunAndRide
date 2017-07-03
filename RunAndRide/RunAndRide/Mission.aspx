<%@ Page Title="活動任務" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    
    <br>
     <h2 style="text-align:center">活動任務</h2>
    <hr>
    <section>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mId" DataSourceID="SqlDataSource1" GridLines="None" Width="100%" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="mId" HeaderText="mId" InsertVisible="False" ReadOnly="True" SortExpression="mId" Visible="False" />
                <asp:BoundField DataField="mType" HeaderText="活動類別" SortExpression="mType">
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mName" HeaderText="活動名稱" SortExpression="mName" >
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mDistance" HeaderText="距離" SortExpression="mDistance" >
                <FooterStyle ForeColor="White" />
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mSpeed" HeaderText="速度" SortExpression="mSpeed" >
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mReward" HeaderText="獎勵" SortExpression="mReward" >
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mDescrip" HeaderText="敘述" SortExpression="mDescrip" >
                <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="mPoint" HeaderText="點數" SortExpression="mPoint" Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tMission]"></asp:SqlDataSource>

    </section>
   

    
   </asp:Content>
