<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detruire.aspx.cs" Inherits="lab5.clients.detruire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DropDownList ID="clients" runat="server" Height="28px" OnSelectedIndexChanged="clients_SelectedIndexChanged" Width="545px" AutoPostBack="true"   ></asp:DropDownList>

    <asp:Label ID="msg" runat="server" Text="Label" ></asp:Label>

</asp:Content>
