<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewsingleproduct.aspx.cs" Inherits="E_commerce.viewsingleproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 296px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style7 {
            width: 273px;
        }
        .auto-style9 {
            width: 21px;
        }
        .auto-style10 {
            width: 296px;
            height: 224px;
        }
        .auto-style11 {
            width: 273px;
            height: 224px;
        }
        .auto-style12 {
            height: 224px;
        }
        .auto-style15 {
            height: 42px;
        }
        .auto-style16 {
            width: 296px;
            height: 42px;
        }
        .auto-style17 {
            width: 273px;
            height: 42px;
        }
        .auto-style18 {
            width: 296px;
            height: 17px;
        }
        .auto-style19 {
            width: 273px;
            height: 17px;
        }
        .auto-style20 {
            height: 17px;
        }
        .auto-style25 {
            width: 296px;
            height: 27px;
        }
        .auto-style26 {
            width: 273px;
            height: 27px;
        }
        .auto-style27 {
            height: 27px;
        }
        .auto-style28 {
            width: 296px;
            height: 148px;
        }
        .auto-style29 {
            width: 273px;
            height: 148px;
        }
        .auto-style30 {
            width: 18px;
        }
        .auto-style32 {
            width: 115px;
        }
        .auto-style33 {
            width: 13px;
        }
        .auto-style34 {
            margin-top: 12px;
        }
        .auto-style35 {
            width: 158px;
        }
        .auto-style36 {
            width: 79px;
        }
        .auto-style37 {
            width: 216px;
        }
        .auto-style41 {
            width: 100%;
            height: 146px;
        }
        .auto-style42 {
            height: 11px;
        }
        .auto-style43 {
            margin-left: 35px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style11">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="252px" Width="258px" />
            </td>
            <td class="auto-style12">
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" BackColor="#FF3300" CssClass="auto-style5" Height="211px" Width="387px">
                    <table class="auto-style41">
                        <tr>
                            <td class="auto-style9"></td>
                            <td class="auto-style37" colspan="2"></td>
                            <td colspan="2"></td>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style37" colspan="2">
                                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
                            </td>
                            <td colspan="2">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style37" colspan="2">
                                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Label"></asp:Label>
                            </td>
                            <td colspan="2">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style37" colspan="2">
                                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Label"></asp:Label>
                                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="/-"></asp:Label>
                            </td>
                            <td colspan="2">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <br />
                            </td>
                            <td class="auto-style35">
                                <asp:Button ID="Button2" runat="server" BackColor="#FDDE02" Font-Bold="True" Height="50px" OnClick="Button2_Click" Text="Add To Cart" Width="170px" />
                            </td>
                            <td colspan="2" class="auto-style36">
                                <asp:Button ID="Button3" runat="server" BackColor="#FDDE02" Font-Bold="True" Height="50px" OnClick="Button3_Click" Text="Continue" Width="170px" />
                            </td>
                            <td colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9"></td>
                            <td colspan="3" rowspan="2">
                                <asp:Button ID="Button4" runat="server" BackColor="#FDDE02" CssClass="auto-style43" Font-Bold="True" ForeColor="Black" Height="35px" OnClick="Button4_Click" Text="View Cart" Width="271px" />
                            </td>
                            <td colspan="2"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                  
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style29">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel4" runat="server" BackColor="#FF3300" Height="144px">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Quantity"></asp:Label>
                                    </td>
                                    <td class="auto-style33">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Total Price"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style32">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#FDDE02" ForeColor="Black" Height="49px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="97px">
                                            <asp:ListItem Selected="True">1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style33">&nbsp;</td>
                                    <td>
                                        <asp:Panel ID="Panel3" runat="server" BackColor="#FDDE02" BorderColor="#996633" BorderWidth="2px" Width="68px">
                                            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="  Rs ."></asp:Label>
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Label"></asp:Label>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td colspan="3" rowspan="2">
                                        <asp:Button ID="Button1" runat="server" BackColor="#FDDE02" BorderColor="#996633" BorderWidth="2px" CssClass="auto-style34" Font-Bold="True" ForeColor="Black" Height="60px" Text="BUY NOW" Width="235px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style30">&nbsp;</td>
                                    <td class="auto-style32">&nbsp;</td>
                                    <td class="auto-style33">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
            </td>
            <td class="auto-style20">
                <table __designer:mapid="9a" class="w-100">
                    <tr __designer:mapid="9b">
                        <td __designer:mapid="9c" class="auto-style42">&nbsp;</td>
                        <td __designer:mapid="9d" class="auto-style42"></td>
                        <td __designer:mapid="9e" class="auto-style42"></td>
                        <td __designer:mapid="9f" class="auto-style42"></td>
                    </tr>
                    <tr __designer:mapid="9b">
                        <td __designer:mapid="9c">&nbsp;</td>
                        <td __designer:mapid="9d">&nbsp;</td>
                        <td __designer:mapid="9e">&nbsp;</td>
                        <td __designer:mapid="9f">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="a0">
                        <td __designer:mapid="a1">&nbsp;</td>
                        <td __designer:mapid="a2">&nbsp;</td>
                        <td __designer:mapid="a3">&nbsp;</td>
                        <td __designer:mapid="a4">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="a5">
                        <td __designer:mapid="a6">&nbsp;</td>
                        <td __designer:mapid="a7">&nbsp;</td>
                        <td __designer:mapid="a8">&nbsp;</td>
                        <td __designer:mapid="a9">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="aa">
                        <td __designer:mapid="ab">&nbsp;</td>
                        <td __designer:mapid="ac">&nbsp;</td>
                        <td __designer:mapid="ad">&nbsp;</td>
                        <td __designer:mapid="ae">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="af">
                        <td __designer:mapid="b0">&nbsp;</td>
                        <td __designer:mapid="b1">&nbsp;</td>
                        <td __designer:mapid="b2">&nbsp;</td>
                        <td __designer:mapid="b3">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="b4">
                        <td __designer:mapid="b5">&nbsp;</td>
                        <td __designer:mapid="b6">&nbsp;</td>
                        <td __designer:mapid="b7">&nbsp;</td>
                        <td __designer:mapid="b8">&nbsp;</td>
                    </tr>
                    <tr __designer:mapid="b9">
                        <td __designer:mapid="ba">&nbsp;</td>
                        <td __designer:mapid="bb">&nbsp;</td>
                        <td __designer:mapid="bc">&nbsp;</td>
                        <td __designer:mapid="bd">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26"></td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
