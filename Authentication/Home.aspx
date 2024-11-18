<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapTemplate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Authentication.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
 <div class="container mt-5">
     <h1 class="display-4 text-center mb-4">User Panel</h1>
     <div class="card mx-auto shadow w-50">
         <div class="card-body">
             <!-- Name -->
             <div class="mb-3">
                 <asp:Label runat="server" ID="Labid" Text="ID:" CssClass="fw-bold"></asp:Label>
                 <asp:Label runat="server" ID="labelid" CssClass="d-block"></asp:Label>
             </div>
             <!-- Email -->
             <div class="mb-3">
                 <asp:Label runat="server" ID="Labelname" Text="Name:" CssClass="fw-bold"></asp:Label>
                 <asp:Label  runat="server" ID="labname" CssClass="d-block"></asp:Label>
             </div>
             
             <!-- Logout Button -->
             <div class="d-grid">
                 <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger btn-lg" OnClick="btnLogout_Click" />
             </div>
         </div>
     </div>
 </div>
     </form>
</asp:Content>
