<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-4 col-sm-12"></div>
        <div class="col-md-4 col-sm-12">
            <asp:GridView runat="server" ID="ShoppingCart" CssClass="table" ShowFooter="true" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ProName" HeaderText="Name" />
                    <asp:BoundField DataField="ProPrice" HeaderText="Price" />
                    <asp:BoundField DataField="Random" HeaderText="Unique" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%# "ProductsImages/" + Eval("ProImageName") %>' Width="100" runat="server" />
                        </ItemTemplate>
                        <FooterTemplate>
                            <div>
                                <p>Total Price: <%= price %></p>
                                <asp:LinkButton Text="Checkout" CssClass="btn btn-warning" ID="btnChckout" OnClick="btnChckout_Click"  runat="server" />
                            </div>

                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle HorizontalAlign="Right" />
            </asp:GridView>
            <div id="CnfrmOrder" runat="server" style="visibility:hidden;">
                <asp:Label Text="Name" runat="server" />
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                <asp:Label Text="Email" runat="server" />
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                <asp:Button Text="Confirm" OnClick="btnConfirm_Click" CssClass="btn btn-success mt-2" ID="btnConfirm" runat="server" />
            </div>

        </div>
        <div class="col-md-4 col-sm-12"></div>
    </div>
</asp:Content>

