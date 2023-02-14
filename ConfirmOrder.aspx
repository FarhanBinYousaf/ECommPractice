<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="ConfirmOrder.aspx.cs" Inherits="ConfirmOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-4 col-sm-12"></div>
        <div class="col-md-4 col-sm-12">
            <asp:Label Text="Name" runat="server" />
            <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
            <asp:Label Text="Email" runat="server" />
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
            <asp:Button Text="Confirm" CssClass="btn btn-success mt-2" ID="btnConfirm" runat="server" />
        </div>
        <div class="col-md-4 col-sm-12"></div>
    </div>
</asp:Content>

