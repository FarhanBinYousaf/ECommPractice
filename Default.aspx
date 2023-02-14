<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row mt-4">
            <div class="col-md-3 col-12" style="background-color: navy; padding: 4px; border-radius: 5px;">
                <asp:GridView runat="server" ID="gv" CssClass="border-0" AutoGenerateColumns="false" OnRowCommand="gv_RowCommand">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton Text='<%# Eval("CatName") %>' CssClass="text-decoration-none" ForeColor="White" runat="server" CommandName="showProducts" CommandArgument='<%# Eval("CatID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-md-9">
                <div class="row">
                <asp:ListView runat="server" ID="lvProducts" OnItemCommand="lvProducts_ItemCommand">
                    <ItemTemplate>
                            <div class="col-md-6 col-lg-4 col-xl-3 col-12 text-center">
                                <div class="card mt-3" style="width: 14rem; height: 18rem;">
                                    <asp:Image ImageUrl='<%# "ProductsImages/" + Eval("ProImageName") %>' CssClass="card-img-top" Style="width: 14rem; height: 18rem;" runat="server" />
                                    <h5 class="card-text"><%# Eval("ProName") %></h5>
                                    <p class="card-text"><%# Eval("ProPrice") %></p>
                                    <asp:LinkButton Text="Add to cart" CssClass="btn btn-warning" CommandName="addToCart" CommandArgument='<%# Eval("ProID") %>' runat="server" />
                                </div>
                            </div>
                        
                    </ItemTemplate>
                           
                </asp:ListView>
                     </div>
            </div>

        </div>


    </div>

</asp:Content>

