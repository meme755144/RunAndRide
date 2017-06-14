<%@ Page Title="管理帳戶" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="RunAndRide.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%--<dt>雙因素驗證:</dt>--%>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>變更您的帳戶設定</h4>
                <hr />
                <dl class="dl-horizontal">
                    <table class="nav-justified">
                        <tr>
                            <td>姓名：</td>
                            <td>
                                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>電子郵件：</td>
                            <td>
                                <asp:TextBox ID="tbEmail" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>密碼：</td>
                            <td>
                                <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[變更]" Visible="false" ID="ChangePassword" runat="server" />
                                <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[建立]" Visible="false" ID="CreatePassword" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>連結社群平台</td>
                            <td>
                                <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[管理]" runat="server" ID="HyperLink1" />

                            </td>
                        </tr>
                    </table>
 
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
