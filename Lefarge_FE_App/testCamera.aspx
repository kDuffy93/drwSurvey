<%@ Page Title="" Language="C#" MasterPageFile="~/Lefarge.Master" AutoEventWireup="true" CodeBehind="testCamera.aspx.cs" Inherits="Lefarge_FE_App.testCamera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div data-role="content"> 
 <button data-theme="d" onclick="capturePhoto();">Capture Photo</button> <br>
 <img style="display:none;width:100%;" id="largeImage" src="" /> <br> 
</div>
</asp:Content>
