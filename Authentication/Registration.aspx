<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapTemplate.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Authentication.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h1 class="display-4 text-center mb-4">Registration</h1>
        <form runat="server" class="mx-auto p-4 border rounded shadow w-50">
            <div class="mb-3">
                <asp:Label runat="server" ID="txtid" Text="Enter your Name" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtname" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label runat="server" ID="Labelemail" Text="Enter your Email" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label runat="server" ID="Labelpss" Text="Enter a secret Password" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtpass" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="d-grid">
                <asp:Button ID="btnReg" runat="server" Text="Register" CssClass="btn btn-primary btn-lg" OnClick="btnReg_Click" />
            </div>
        </form>
    </div>
</asp:Content>
