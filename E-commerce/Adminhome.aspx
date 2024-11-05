<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="E_commerce.Adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 303px;
        }
        .auto-style3 {
            width: 160px;
        }
        .auto-style4 {
            width: 303px;
            height: 27px;
        }
        .auto-style5 {
            width: 160px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" Text="Add Category" Height="71px" Width="140px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button3_Click" Text="Add Product" Width="140px" Height="71px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" BackColor="#FF3300" ForeColor="White" Text="Edit Category" OnClick="Button2_Click" Height="71px" Width="140px" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" BackColor="#FF3300" ForeColor="White" Text="Edit Product" Width="140px" OnClick="Button4_Click" Height="71px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" rowspan="2">
                <asp:Button ID="Button5" runat="server" BackColor="#FF3300" ForeColor="White" Text="View Feedbacks" OnClick="Button5_Click" Height="71px" Width="140px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
