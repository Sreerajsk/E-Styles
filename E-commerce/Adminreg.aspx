<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminreg.aspx.cs" Inherits="E_commerce.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style4 {
            width: 366px;
        }
        .auto-style18 {
            width: 240px;
        }
        .auto-style19 {
            height: 55px;
        }
        .auto-style21 {
            width: 240px;
            height: 55px;
        }
        .auto-style23 {
            width: 366px;
            height: 55px;
        }
        .auto-style24 {
            vertical-align: top;
            height: 1019px;
        }
        .auto-style25 {
            height: 50px;
        }
        .auto-style27 {
            width: 240px;
            height: 50px;
        }
        .auto-style29 {
            width: 366px;
            height: 50px;
        }
        .auto-style30 {
            height: 11px;
        }
        .auto-style32 {
            width: 240px;
            height: 11px;
        }
        .auto-style34 {
            width: 366px;
            height: 11px;
        }
        .auto-style35 {
            height: 52px;
        }
        .auto-style37 {
            width: 240px;
            height: 52px;
        }
        .auto-style39 {
            width: 366px;
            height: 52px;
        }
        .auto-style40 {
            width: 149px;
            height: 55px;
        }
        .auto-style41 {
            width: 149px;
            height: 50px;
        }
        .auto-style42 {
            width: 149px;
            height: 11px;
        }
        .auto-style43 {
            width: 149px;
            height: 52px;
        }
        .auto-style44 {
            width: 149px;
        }
        .auto-style45 {
            width: 432px;
            height: 55px;
        }
        .auto-style46 {
            width: 432px;
            height: 50px;
        }
        .auto-style47 {
            width: 432px;
            height: 11px;
        }
        .auto-style48 {
            width: 432px;
            height: 52px;
        }
        .auto-style49 {
            width: 432px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style45"></td>
            <td class="auto-style21"></td>
            <td class="auto-style40"></td>
            <td class="auto-style23"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="Black" Text="Name"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Email"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*This filed is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter valid phone no." ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Address"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="*This filed is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Pincode"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Enter a valid pincode" ForeColor="Red" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Username"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Password"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style46"></td>
            <td class="auto-style27">
                <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Re-enter Password"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="*Password mismatch" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox8" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style47"></td>
            <td class="auto-style32"></td>
            <td class="auto-style42"></td>
            <td class="auto-style34"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style48"></td>
            <td class="auto-style37"></td>
            <td class="auto-style43">
                <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" Text="Register" />
            </td>
            <td class="auto-style39"></td>
            <td class="auto-style35"></td>
            <td class="auto-style35"></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style49"></td>
            <td class="auto-style18"></td>
            <td class="auto-style44"></td>
            <td class="auto-style4"></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
