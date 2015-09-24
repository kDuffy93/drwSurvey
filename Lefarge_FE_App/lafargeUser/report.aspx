﻿<%@ Page Title="" Language="C#" MasterPageFile="~/report.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="Lefarge_FE_App.admin.report" %>





<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="well" style="height:200px">
    
        <div style="float:left;">
        <h3>Report for:</h3>
        <asp:Label runat="server" For="txtEqUn">Unit #</asp:Label>
          <asp:TextBox ID="txtEqUn" runat="server" Enabled="false"></asp:TextBox>
         <asp:Label runat="server" For="txtEqID">Unit #</asp:Label>
        <asp:TextBox ID="txtEqID" runat="server" Enabled="false"></asp:TextBox>
            </div>
        <div style="float:right;">
            <div style="float:left;">
         <asp:Image Visible="false" ID="imgMain" AlternateText="Main Equipment Image" Width="275" Height="180"  runat="server" />
             </div>
            <div style="height:30px; width:300px;float:left;">
                <asp:Button ID="Button2"  runat="server" Text="Click to view pop-up window" />
                <a data-rel="back" data-role="button" data-icon="back">Go Back</a>


            </div>
            
       
  

          
             
           
        </div>
        
    </div>
    
<asp:Panel ID="Panel1" runat="server" style="" BackColor="LightGray" width="500px" Height="350">
This is what the window will look like where pictures are going to go. Im still working on this, currently neither work.<br /><br />
    When you click the View Image button, It will show you all the pictures that were uploaded for that Question.<br /><br />
    When you click on a heading button, It will show you all the pictures that are accociated with that heading including any uploaded to each question in that heading & the pictures for that heading that arent associated to a specefic question.<br />

    <div style="float:inherit;height:50px; width:200px;">
<asp:Button ID="OKButton" runat="server" Text="Close" Height="20px" Width="100px" />
    </div>
</asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlId="Button2" 
 PopupControlID="Panel1" OkControlID="OKButton"   PopupDragHandleControlID="panel1" Drag="true"/>


    <asp:DropDownList runat="server" ID="ddlDates" AutoPostBack="true"   OnSelectedIndexChanged="ddlDates_SelectedIndexChanged" OnDataBinding="ddlDates_DataBinding"></asp:DropDownList>
    
    <asp:GridView ID="grdResults" runat="server" CssClass="table table-striped"
        AutoGenerateColumns="False" OnRowCommand="grdResults_RowCommand"
        DataKeyNames="ID"  OnRowDataBound="grdResults_RowDataBound" >
        <Columns>   
                 
            <asp:BoundField  DataField="Question_ID" visible="true"  HeaderText="Question" HeaderStyle-Width="300"/>
            <asp:BoundField DataField="Response" HeaderText="Response"/>
            <asp:BoundField DataField="deficiency_defect" HeaderText="deficiency/defect"/>
            <asp:BoundField DataField="Action_plan" HeaderText="Action Plan"/>
             <asp:BoundField DataField="heading_ID" HeaderText="For Heading" />
             <asp:BoundField DataField="Date_Completed" HeaderText="Date Completed"/>
              <asp:BoundField   HeaderText="View Images" />
             
            

            
         

        </Columns>
    </asp:GridView>
   

    
 

</asp:Content>
