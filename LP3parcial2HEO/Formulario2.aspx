<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Formulario2.aspx.cs" Inherits="LP3parcial2HEO.Formulario2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
        <br />
    </p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="width: 56px" Text="Button" />
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="Descargar" HeaderText="Archivo" ShowHeader="True" Text="Descargar" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
