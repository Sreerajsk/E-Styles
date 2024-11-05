<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="categoryinsert.aspx.cs" Inherits="E_commerce.categoryinsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 101px;
        }
        .auto-style3 {
            height: 63px;
        }
        .auto-style4 {
            width: 101px;
            height: 63px;
        }
        .auto-style5 {
            width: 309px;
        }
        .auto-style6 {
            height: 63px;
            width: 309px;
        }
        .auto-style16 {
            width: 309px;
            height: 29px;
        }
        .auto-style17 {
            width: 101px;
            height: 29px;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            width: 309px;
            height: 49px;
        }
        .auto-style20 {
            width: 101px;
            height: 49px;
        }
        .auto-style21 {
            height: 49px;
        }
        .auto-style22 {
            width: 309px;
            height: 50px;
        }
        .auto-style23 {
            width: 101px;
            height: 50px;
        }
        .auto-style24 {
            height: 50px;
        }
        .auto-style25 {
            height: 64px;
            width: 309px;
        }
        .auto-style26 {
            width: 101px;
            height: 64px;
        }
        .auto-style27 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="CategoryName"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*This field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Description"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*This filed is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23">&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Image"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FF3300" BorderStyle="Groove" ForeColor="Black" Width="195px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*Select a file to upload" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" Text="Add Category" Width="193px" />
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" ForeColor="Black"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
