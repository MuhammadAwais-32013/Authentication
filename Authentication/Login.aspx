<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Authentication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h1 class="display-4 text-center mb-4">Login</h1>
        <div class="card mx-auto shadow-lg w-50">
            <div class="card-body">
                <form runat="server" class="needs-validation">
                    <!-- Email Input -->
                    <div class="mb-3">
                        <asp:Label runat="server" ID="Labelemail" Text="Enter Email" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                    </div>

                    <!-- Password Input -->
                    <div class="mb-3">
                        <asp:Label runat="server" ID="Labelpss" Text="Enter Password" CssClass="form-label fw-bold"></asp:Label>
                        <asp:TextBox runat="server" ID="txtpass" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                    </div>

                    <!-- Login and Signup Buttons -->
                    <div class="d-grid gap-2">
                        <!-- Login Button -->
                        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" OnClick="btnlogin_Click" />
                    </div>
                    <div class="text-center mt-3">
                        <p class="mb-2 text-muted">New here? Register to create an account:</p>
                        <a href="Registration.aspx" class="btn btn-outline-secondary btn-sm">Signup Now
    </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
