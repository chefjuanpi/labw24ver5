<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="lister.aspx.cs" Inherits="lab5.clients.lister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th {
            color: #000000;
            font-size:large;
            padding-bottom:15px;
            }
        td{
            font-size:medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:TextBox ID="txtSearch" runat="server">

        </asp:TextBox><asp:ImageButton ID="Search" runat="server" imageurl="~/img/rechercher.ico"
                                    Height="30" Width="30" BackColor="Transparent" CommandName="Cancel" BorderColor="Transparent" OnClick="Search_Click"/>
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
   </div>
    
    <br />
   <asp:ListView ID="clients" runat="server">
        <LayoutTemplate>
            
            <table>
                <tr>
                    <th>Company Name</th>
                    <th>Contact Name</th>
                    <th>Address     </th>
                    <th>City        </th>
                    <th>Region      </th>
                    <th>Country     </th>
                </tr>
                <div runat="server" id="itemPlaceHolder" />
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("CompanyName")%></td>
                <td><%# Eval("ContactName")%></td>
                <td><%# Eval("Address")%></td>
                <td><%# Eval("City")%></td>
                <td style="text-align: center;"><%# Eval("Region")%></td>
                <td><%# Eval("Country")%></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
