<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PageSuggestions.Sugerencias" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<!DOCTYPE html>
<%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center; margin-top: 100px">
    <div>
        <h1 style="text-align: center; text-decoration: underline; font-size: 80px;">AGA Sugerencias</h1>        
        <h3 style="text-align: center; font-size: 35px">Sede o Lugar</h3>
        <div style="display: flex; justify-content: center;font-size: 35px">
            <dx:BootstrapRadioButtonList ID="BootstrapRadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <Items>
                    <dx:BootstrapListEditItem Text="CARRIZALES" Value="CARRIZALES" Selected="true">
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
            
        <div style="display: flex; justify-content: center;font-size: 25px;margin-top: 20px;">
            <dx:BootstrapRadioButtonList ID="BootstrapRadioButtonList2" runat="server" RepeatDirection="Horizontal">
                <Items>
                    <dx:BootstrapListEditItem Text="Administrativos" Value="Administrativos">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="Campo" Value="Campo">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="Planta" Value="Planta">
                    </dx:BootstrapListEditItem>
                </Items>
            </dx:BootstrapRadioButtonList>
        </div>

        <div>
            <p class="text-primary" style="text-align: center; font-size: 25px; color: #0000FF;">
                Ingrese su sugerencia o queja</p>
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Height="73px" Width="560px" TextMode="MultiLine" ></asp:TextBox>
        </div>
        <div style="text-align: center">
            
            <dx:BootstrapButton ID="BootstrapButton1" class="btn btn-success" runat="server" AutoPostBack="false" OnClick="BootstrapButton1_Click" style="margin-top: 20px" Text="Enviar" >
            </dx:BootstrapButton>
            
        </div>
        </div>
        
    </form>
</body>
</html>
