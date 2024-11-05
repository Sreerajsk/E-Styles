<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbill.aspx.cs" Inherits="E_commerce.viewbill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 50px;
        }
        .auto-style3 {
            width: 298px;
        }
        .auto-style5 {
            width: 141px;
        }
        .auto-style8 {
            width: 60px;
            height: 29px;
        }
        .auto-style9 {
            width: 377px;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style13 {
            width: 377px;
        }
        .auto-style17 {
            height: 27px;
        }
        .auto-style18 {
            width: 252px;
        }
        .auto-style19 {
            width: 146px;
        }
        .auto-style37 {
            height: 363px;
        }
        .auto-style44 {
            width: 460px;
        }
        .auto-style45 {
            width: 460px;
            height: 27px;
        }
        .auto-style48 {
            width: 95%
        }
        .auto-style49 {
            width: 131px;
        }
        .auto-style50 {
            width: 149px;
        }
        .auto-style51 {
            height: 363px;
            width: 149px;
        }
        .auto-style61 {
            width: 86px;
        }
        .auto-style62 {
            width: 86px;
            height: 27px;
        }
        .auto-style63 {
            width: 1019px;
        }
        .auto-style64 {
            width: 1019px;
            height: 27px;
        }
        .auto-style65 {
            width: 60px;
        }
        .auto-style66 {
            width: 60px;
            height: 27px;
        }
        .auto-style67 {
            width: 349px;
        }
        .auto-style68 {
            width: 349px;
            height: 27px;
        }
        .auto-style70 {
            width: 349px;
            height: 16px;
        }
        .auto-style71 {
            width: 1019px;
            height: 16px;
        }
        .auto-style72 {
            width: 460px;
            height: 16px;
        }
        .auto-style74 {
            width: 60px;
            height: 16px;
        }
        .auto-style75 {
            width: 86px;
            height: 16px;
        }
        .auto-style76 {
            height: 16px;
        }
        .auto-style78 {
            width: 166px;
            height: 29px;
        }
        .auto-style79 {
            width: 166px;
            height: 27px;
        }
        .auto-style80 {
            width: 166px;
            height: 16px;
        }
        .auto-style81 {
            width: 166px;
        }
        .auto-style84 {
            width: 166px;
            height: 63px;
        }
        .auto-style85 {
            width: 60px;
            height: 63px;
        }
        .auto-style86 {
            width: 377px;
            height: 63px;
        }
        .auto-style88 {
            height: 63px;
        }
        .auto-style93 {
            width: 285px;
            height: 16px;
        }
        .auto-style94 {
            width: 285px;
        }
        .auto-style95 {
            width: 285px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td colspan="4" rowspan="17">
                <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="866px" Width="775px">
                    <table class="auto-style48">
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style13" colspan="6">&nbsp;</td>
                            <td class="auto-style61">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td colspan="11" rowspan="2">
                                <asp:Panel ID="Panel2" runat="server" BackColor="#FF3300" Height="48px">
                                    <table class="auto-style2">
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Sales Bill"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style13" colspan="6">&nbsp;</td>
                            <td class="auto-style61">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style78">&nbsp;</td>
                            <td class="auto-style8"></td>
                            <td class="auto-style9" colspan="3">
                                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Buisiness Name :    E-Styles"></asp:Label>
                            </td>
                            <td class="auto-style9" colspan="3">
                                <asp:Label ID="Label34" runat="server" ForeColor="Black" Text="GST IN : 2123456745677877"></asp:Label>
                            </td>
                            <td colspan="5" rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl="~/images/e-styles.png" Width="148px" />
                            </td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style84"></td>
                            <td class="auto-style85"></td>
                            <td class="auto-style86" colspan="3">
                                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Address : Whitefield ,banglore"></asp:Label>
                            </td>
                            <td class="auto-style86" colspan="3">
                                <asp:Label ID="Label35" runat="server" ForeColor="Black" Text="Invoice Number : 12343"></asp:Label>
                            </td>
                            <td class="auto-style88"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style13" colspan="3">
                                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Phone Number : +91 6567642727"></asp:Label>
                            </td>
                            <td class="auto-style13" colspan="3">
                                <asp:Label ID="Label36" runat="server" ForeColor="Black" Text="State :Karnataka"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style13" colspan="6">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style66"></td>
                            <td class="auto-style17" colspan="11">
                                <asp:Panel ID="Panel3" runat="server" BackColor="#FF3300" Height="32px">
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style18">&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Bill To :"></asp:Label>
                                                &nbsp;</td>
                                            <td class="auto-style19">&nbsp;</td>
                                            <td>&nbsp;<asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="White" Text="Shipping To :"></asp:Label>
                                                &nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style67">&nbsp;</td>
                            <td class="auto-style63" colspan="3">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style94">&nbsp;</td>
                            <td class="auto-style61">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style66"></td>
                            <td class="auto-style68">
                                <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Name   :"></asp:Label>
                            </td>
                            <td class="auto-style64" colspan="3">
                                <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style45"></td>
                            <td class="auto-style95">
                                <asp:Label ID="Label12" runat="server" ForeColor="Black" Text="Name   :"></asp:Label>
                            </td>
                            <td class="auto-style62">
                                <asp:Label ID="Label23" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td colspan="4">&nbsp;</td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style67">
                                <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Phone :"></asp:Label>
                            </td>
                            <td class="auto-style63" colspan="3">
                                <asp:Label ID="Label20" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style94">
                                <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Phone :"></asp:Label>
                            </td>
                            <td class="auto-style61">
                                <asp:Label ID="Label24" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td colspan="4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style80">&nbsp;</td>
                            <td class="auto-style74"></td>
                            <td class="auto-style70">
                                <asp:Label ID="Label15" runat="server" ForeColor="Black" Text="Address "></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style71" colspan="3">
                                <asp:Label ID="Label21" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style72"></td>
                            <td class="auto-style93">
                                <asp:Label ID="Label16" runat="server" ForeColor="Black" Text="Address :"></asp:Label>
                            </td>
                            <td class="auto-style75">
                                <asp:Label ID="Label25" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style76" colspan="4"></td>
                            <td class="auto-style76"></td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style66"></td>
                            <td class="auto-style68">
                                <asp:Label ID="Label17" runat="server" ForeColor="Black" Text="Pincode :"></asp:Label>
                            </td>
                            <td class="auto-style64" colspan="3">
                                <asp:Label ID="Label22" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style45"></td>
                            <td class="auto-style95">
                                <asp:Label ID="Label18" runat="server" ForeColor="Black" Text="Pincode :"></asp:Label>
                            </td>
                            <td class="auto-style62">
                                <asp:Label ID="Label26" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style17" colspan="4"></td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style67">&nbsp;</td>
                            <td class="auto-style63" colspan="3">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style94">&nbsp;</td>
                            <td class="auto-style61">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                            <td class="auto-style67">&nbsp;</td>
                            <td class="auto-style63" colspan="3">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style94">&nbsp;</td>
                            <td class="auto-style61">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td colspan="13">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="161px" Width="715px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Product Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label28" runat="server" Text='<%# Eval("Pro_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity">
                                            <ItemTemplate>
                                                <asp:Label ID="Label29" runat="server" Text='<%# Eval("Or_quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MRP">
                                            <ItemTemplate>
                                                <asp:Label ID="Label30" runat="server" Text='<%# Eval("Pro_price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount">
                                            <ItemTemplate>
                                                <asp:Label ID="Label31" runat="server" Text='<%# Eval("Grandtotal") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="4">
                                <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Total Price :"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="label"></asp:Label>
                            </td>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="3">
                                <asp:Button ID="Button2" runat="server" BackColor="#FF3300" ForeColor="White" Height="38px" OnClick="Button2_Click" Text="PAY NOW" Width="146px" />
                            </td>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style81">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
