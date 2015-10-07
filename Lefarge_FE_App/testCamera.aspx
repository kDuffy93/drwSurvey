<%@ Page Title="" Language="C#" MasterPageFile="~/Lefarge.Master" AutoEventWireup="true" CodeBehind="testCamera.aspx.cs" Inherits="Lefarge_FE_App.testCamera" %>

<%@ Register Assembly="Obout.Ajax.UI" Namespace="Obout.Ajax.UI.FileUpload" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <obout:FileUpload ID="FileUpload1" runat="server" Width="250px"  />
</asp:Content>
