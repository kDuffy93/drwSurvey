﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Lefarge.Master" AutoEventWireup="true" CodeBehind="testCamera.aspx.cs" Inherits="Lefarge_FE_App.testCamera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" charset="utf-8">
 var pictureSource; // picture source
 var destinationType; // sets the format of returned value 

 // Wait for Cordova to connect with the device
 document.addEventListener("deviceready",onDeviceReady,false);

 // Cordova is ready to be used!
 function onDeviceReady() {
 pictureSource=navigator.camera.PictureSourceType;
 destinationType=navigator.camera.DestinationType;
 }

 // Take picture using device camera and retrieve image as base64-encoded string
 function capturePhoto() {
 navigator.camera.getPicture(onPhotoDataSuccess, onFail, { quality: 50, allowEdit : true,
 destinationType: destinationType.DATA_URL });
 }

 // Called if something bad happens. 
 function onFail(message) {
 alert('Failed because: ' + message);
 }

 function onPhotoDataSuccess(imageData) {
 // Uncomment to view the base64 encoded image data
 // console.log(imageData);

 // Unhide image elements
 largeImage.style.display = 'block';

 // Show the captured photo
 // The inline CSS rules are used to resize the image
 largeImage.src = "data:image/jpeg;base64," + imageData;
 }

 // Called when a photo is successfully retrieved
 function onPhotoURISuccess(imageURI) {
 // Uncomment to view the image file URI 
 // console.log(imageURI);

 // Get image handle
 var largeImage = document.getElementById('largeImage');

 // Unhide image elements
 largeImage.style.display = 'block';
     // Show the captured photo
     // The inline CSS rules are used to resize the image
 largeImage.src = imageURI;
}
 </script>

    <div data-role="content"> 
 <button data-theme="d" onclick="capturePhoto();">Capture Photo</button> <br>
 <img style="display:none;width:100%;" id="largeImage" src="" /> <br> 
</div> 
    <input type="file" capture="camera" accept="image/*" id="takePictureField" />
</asp:Content>
