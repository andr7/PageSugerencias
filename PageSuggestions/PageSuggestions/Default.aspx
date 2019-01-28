<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PageSuggestions._Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="text-align: center; text-decoration: underline;">AGA Sugerencias</h1>        
        <h3>Sede o Lugar</h3>                 
        <div>
            <dx:BootstrapRadioButtonList ID="BootstrapRadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <Items>
                    <dx:BootstrapListEditItem Text="CARRIZALES" Value="CARRIZALES" Selected="True">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="NATALIA" Value="NATALIA">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="CALIFORNIA" Value="CALIFORNIA">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="VALERIE" Value="VALERIE">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="DON VICTOR" Value="DON VICTOR">
                    </dx:BootstrapListEditItem>
                </Items>
            </dx:BootstrapRadioButtonList>
        </div>
        
        <%--<div class="form-group">
            <label for="exampleFormControlTextarea1">Ingrese su Sugerencia o queja</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
        </div> --%>       
        <div>
            <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" Width="681px">
            </dx:BootstrapTextBox>
        </div>
        <div>
        <%--<div class="form-group">
            <label for="exampleFormControlFile1">Adjuntar Evidencia</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1">
        </div> --%>       
        
            <asp:Button ID="enviar" runat="server" Text="Enviar" CssClass="btn btn-success" BorderStyle="Solid" OnClick="enviar_Click" Width="150px" />
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
