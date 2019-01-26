<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PageSuggestions._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>AGA Sugerencias</h1>
        <h3>Sede o Lugar</h3>
        
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="CAR" value="option1"  checked="true" >
            <label class="form-check-label" for="inlineRadio1">CARRIZALES</label>
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="NAT" value="option2" >
            <label class="form-check-label" for="inlineRadio2">NATALIA</label>
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="CAL" value="option2">
            <label class="form-check-label" for="inlineRadio2">CALIFORNIA</label>
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="VAL" value="option2" >
            <label class="form-check-label" for="inlineRadio2">VALERIE</label>
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DV" value="option2" >
            <label class="form-check-label" for="inlineRadio2">DON VICTOR</label>

        </div>
        
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Ingrese su Sugerencia o queja</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>

        <div class="form-group">
            <label for="exampleFormControlFile1">Adjuntar Evidencia</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1">
        </div>
        
       
    </div>



    <%--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

</asp:Content>
