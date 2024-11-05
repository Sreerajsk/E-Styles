<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userreg.aspx.cs" Inherits="E_commerce.Userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 117px;
        }
    .auto-style2 {
            width: 394px;
        }
        .auto-style3 {
            width: 394px;
            height: 17px;
        }
        .auto-style4 {
            width: 240px;
            height: 17px;
        }
        .auto-style5 {
            height: 17px;
        }
        .auto-style7 {
            width: 240px;
            height: 39px;
        }
        .auto-style8 {
            width: 394px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            width: 394px;
            height: 50px;
        }
        .auto-style11 {
            width: 240px;
            height: 50px;
        }
        .auto-style12 {
            height: 50px;
        }
        .auto-style16 {
            width: 394px;
            height: 20px;
        }
        .auto-style17 {
            width: 240px;
            height: 20px;
        }
        .auto-style18 {
            height: 20px;
        }
        .auto-style19 {
            height: 39px;
            width: 548px;
        }
        .auto-style20 {
            height: 17px;
            width: 548px;
        }
        .auto-style21 {
            height: 50px;
            width: 548px;
        }
        .auto-style22 {
            height: 20px;
            width: 548px;
        }
        .auto-style23 {
            width: 548px;
        }
        .auto-style25 {
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style7"></td>
        <td class="auto-style19"></td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style20"></td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Name"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Phone"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Email"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style25">
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style23">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black" Width="98px">
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="2">Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td></td>
        <td>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Address"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Pincode"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Enter a valid pincode" ForeColor="Red" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Username"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Password"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Re-Enter Password"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="*Password mismatch" ForeColor="Red"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style16"></td>
        <td class="auto-style17"></td>
        <td class="auto-style22">
            <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" Text="Register" />
        </td>
        <td class="auto-style18">
            &nbsp;</td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style23">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
