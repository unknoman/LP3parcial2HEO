<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="LP3parcial2HEO.Formulario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="TextBox1" type="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Campo email requerido"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Ingresa un email valido" ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Campo username requerido"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Edad:"></asp:Label>
        <asp:TextBox ID="TextBox3" type="number" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="La edad tiene que ser mayor de 15" MaximumValue="9999999" MinimumValue="16" Type="Integer" Display="None"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
        <asp:TextBox ID="TextBox4" type="password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Campo contraseña es requerido"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="None" ErrorMessage="Las contraseñas tienen que ser iguales"></asp:CompareValidator>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Repetir Contraseña:"></asp:Label>
        <asp:TextBox ID="TextBox5"  type="password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Campo repetir contraseña es requerido"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click"/>
    <p>
        &nbsp;</p>
</asp:Content>
