 <%@ Page Title="" Language="C#" MasterPageFile="~/report.Master" AutoEventWireup="true" CodeBehind="tempImages.aspx.cs" Inherits="Lefarge_FE_App.lafargeUser.tempImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList runat="server"  ID="DLTempImage" DataKeyField="ID" OnItemDataBound="DLTempImage_ItemDataBound">
    <ItemTemplate>
       Images:
        <asp:Image  runat="server" ID="imageContainer" ImageUrl='<%# "/admin/" + Eval("URL") %>' Height="300" Width="300"/>
               
    </ItemTemplate>
</asp:DataList>
</asp:Content>
 